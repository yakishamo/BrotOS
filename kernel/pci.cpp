#include "pci.hpp"
#include "asmfunc.hpp"
#include "frame.hpp"

const uint16_t ConfigAddr = 0x0cf8;
const uint16_t ConfigData = 0x0cfc;
int num_device = 0;
int invdev = 0;
Device devices[MAX_DEVICE];

uint32_t MakeAddr(uint8_t bus, uint8_t device, uint8_t func, uint8_t reg_addr) {
	return (1<<31) | (bus<<16) | (device<<11) | (func<<8) | (reg_addr&0xfcu);
}

void WriteAddr(uint32_t addr) {
	IoOut32(ConfigAddr, addr);
}

void WriteData(uint32_t data) {
	IoOut32(ConfigData, data);
}

uint32_t ReadData() {
	return IoIn32(ConfigData);
}

uint16_t ReadVendorId(uint8_t bus, uint8_t device, uint8_t func) {
	WriteAddr(MakeAddr(bus, device, func, 0x00));
	return ReadData() & 0xffffu;
}

uint16_t ReadVendorId(Device dev) {
	WriteAddr(MakeAddr(dev.bus, dev.device, dev.function, 0x00));
	return ReadData() & 0xffffu;
}

uint8_t ReadHeaderType(uint8_t bus, uint8_t device, uint8_t func) {
	WriteAddr(MakeAddr(bus, device, func, 0x0c));
	return (ReadData() >> 16) & 0xffu;
}

uint32_t ReadBar(Device dev, int num) {
	WriteAddr(MakeAddr(dev.bus, dev.device, dev.function,0x10 + num*0x04));
	return ReadData();
}

ClassCode ReadClassCode(uint8_t bus, uint8_t device, uint8_t func) {
	WriteAddr(MakeAddr(bus, device, func, 0x08));
	uint32_t reg = ReadData();
	ClassCode cc;
	cc.base      = (reg >> 24) & 0xffu;
	cc.sub       = (reg >> 16) & 0xffu;
	cc.interface = (reg >> 8)  & 0xffu;
	return cc;
}

uint32_t ReadBusNumbers(uint8_t bus, uint8_t device, uint8_t func) {
	WriteAddr(MakeAddr(bus, device, func, 0x18));
	return ReadData();
}

int AddDevice(uint8_t bus, uint8_t device, uint8_t func, uint8_t header_type) {
	if(num_device == MAX_DEVICE) {
		Print((char*)"failed add device");
		return 1;
	}
	devices[num_device] = Device{bus, device, func, header_type};
	num_device++;
	return 0;
}

int IsSingleFunctionDevice(uint8_t header_type) {
	return (header_type & 0x80u) == 0;
}

int ScanAllBus() {
	char buf[100];
	num_device = 0;

	uint8_t header_type = ReadHeaderType(0,0,0);
	if(IsSingleFunctionDevice(header_type)){
		Print("SingleFunctionDevice");
		AddDevice(0,0,0,ReadHeaderType(0,0,0));
		return ScanBus(0);
	}
	Print("Not SingleFunctionDevice");
	AddDevice(0,0,0,ReadHeaderType(0,0,0));

	for(uint8_t func = 1; func < 8; func++) {
		if(ReadVendorId(0,0,func) == 0xffffu) {
			dPrint("invailed bus : ", func);
			invdev++;
			continue;
		}
		dPrint("ScanBus : ", func);
		if(int err = ScanBus(func)) return err;
		dPrint("ScanBusEnd : ", func);
	}
	return 0;
}

int ScanBus(uint8_t bus) {
	for(uint8_t device = 0; device < 32; device++) {
		if(ReadVendorId(bus, device, 0) == 0xffffu) {
			dPrint("invalid device : ", device);
			continue;
		}
		dPrint("ScanDevice : ", device);
		if(int err = ScanDevice(bus, device)) {
			return err;
		}
		dPrint("ScanDeviceEnd : ", device);
	}
	return 0;
}

int ScanDevice(uint8_t bus, uint8_t device) {
	if(int err = ScanFunction(bus, device, 0)) {
		return err;
	}
	if(IsSingleFunctionDevice(ReadHeaderType(bus, device, 0))) {
		Print("Single Function Device");
		return 0;
	}
	Print("Not Single Function Device");
	for(uint8_t func = 1; func < 8; func++) {
		if(ReadVendorId(bus, device, func) == 0xffffu) {
			continue;
		}
		dPrint("ScanFunction : ", func);
		if(int err = ScanFunction(bus, device, func)) {
			return err;
		}
		dPrint("ScanFunctionEnd : ", func);
	}
	return 0;
}

int ScanFunction(uint8_t bus, uint8_t device, uint8_t func) {
	uint8_t header_type = ReadHeaderType(bus, device, func);
	if(int err = AddDevice(bus, device, func, header_type)) {
		return err;
	}

	auto class_code = ReadClassCode(bus, device, func);
	uint8_t base = class_code.base;
 	uint8_t sub = class_code.sub;

	if(base == 0x06u && sub == 0x04) {
		Print("PCI to PCI bridge found");
		uint32_t bus_numbers = ReadBusNumbers(bus, device, func);
		uint8_t secondary_bus = (bus_numbers >> 8) & 0xffu;
		return ScanBus(secondary_bus);
	}
	return 0;
}

