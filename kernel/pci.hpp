#pragma once

#include <stdint.h>

#define MAX_DEVICE 32

typedef struct {
	uint8_t base, sub, interface;
} ClassCode;

typedef struct {
	uint8_t bus, device, function, header_type;
	ClassCode class_code;
} Device;

uint16_t ReadVendorId(uint8_t bus, uint8_t device, uint8_t func);
uint16_t ReadVendorId(Device dev);
uint8_t ReadHeaderType(uint8_t bus, uint8_t device, uint8_t func);
uint32_t ReadBar(Device dev, int num);
ClassCode ReadClassCode(uint8_t bus, uint8_t device, uint8_t func);
int AddDevice(uint8_t bus, uint8_t device, uint8_t func);
int ScanAllBus(void);
int ScanBus(uint8_t bus);
int ScanDevice(uint8_t bus, uint8_t device);
int ScanFunction(uint8_t bus, uint8_t device, uint8_t func);
