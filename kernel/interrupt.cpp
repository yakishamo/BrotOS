#include <stdint.h>
#include <stdio.h>
#include "interrupt.hpp"
#include "asmfunc.hpp"
#include "pic.hpp"
#include "frame.hpp"
#include "input.hpp"
#include "keyboard.hpp"

InterruptDescriptor idt[256];
Vector InterruptMessagePosition = {400, 300};

extern char keycode[0x100];
extern InputBuffer Input_Buffer;

void stop(void) __attribute__((no_caller_saved_registers));

__attribute__((no_caller_saved_registers))
inline bool isAlphabet(char c) {
	return (c >= 'a' && c <= 'z') || (c <= 'A' && c >= 'Z');
}

__attribute__((interrupt))
void Interrupt_1(InterruptFrame *frame) {
	PrintLine("Interrupt1", InterruptMessagePosition,{255,0,0});
	stop();
	NotifyEndOfInterrupt();
}

__attribute__((interrupt))
void Interrupt_2(InterruptFrame *frame) {
	PrintLine("Interrupt2", InterruptMessagePosition,{255,0,0});
	stop();
	NotifyEndOfInterrupt();
}
__attribute__((interrupt))
void Interrupt_4(InterruptFrame *frame) {
	PrintLine("Interrupt4", InterruptMessagePosition,{255,0,0});
	stop();
	NotifyEndOfInterrupt();
}

__attribute__((interrupt))
void Interrupt_5(InterruptFrame *frame) {
	PrintLine("Interrupt5", InterruptMessagePosition,{255,0,0});
	stop();
	NotifyEndOfInterrupt();
}
__attribute__((interrupt))
void Interrupt_6(InterruptFrame *frame) {
	PrintLine("Interrupt6", InterruptMessagePosition,{255,0,0});
	stop();
	NotifyEndOfInterrupt();
}
__attribute__((interrupt))
void Interrupt_7(InterruptFrame *frame) {
	PrintLine("Interrupt7", InterruptMessagePosition,{255,0,0});
	stop();
	NotifyEndOfInterrupt();
}
__attribute__((interrupt))
void Interrupt_8(InterruptFrame *frame) {
	PrintLine("Interrupt8", InterruptMessagePosition,{255,0,0});
	stop();
	NotifyEndOfInterrupt();
}
__attribute__((interrupt))
void Interrupt_9(InterruptFrame *frame) {
	PrintLine("Interrupt9", InterruptMessagePosition,{255,0,0});
	stop();
	NotifyEndOfInterrupt();
}
__attribute__((interrupt))
void Interrupt_10(InterruptFrame *frame) {
	PrintLine("Interrupt10", InterruptMessagePosition,{255,0,0});
	stop();
	NotifyEndOfInterrupt();
}
__attribute__((interrupt))
void Interrupt_11(InterruptFrame *frame) {
	PrintLine("Interrupt11", InterruptMessagePosition,{255,0,0});
	stop();
	NotifyEndOfInterrupt();
}
__attribute__((interrupt))
void Interrupt_15(InterruptFrame *frame) {
	PrintLine("Interrupt15", InterruptMessagePosition,{255,0,0});
	stop();
	NotifyEndOfInterrupt();
}
__attribute__((interrupt))
void Interrupt_16(InterruptFrame *frame) {
	PrintLine("Interrupt16", InterruptMessagePosition,{255,0,0});
	stop();
	NotifyEndOfInterrupt();
}
__attribute__((interrupt))
void Interrupt_17(InterruptFrame *frame) {
	PrintLine("Interrupt17", InterruptMessagePosition,{255,0,0});
	stop();
	NotifyEndOfInterrupt();
}
__attribute__((interrupt))
void Interrupt_18(InterruptFrame *frame) {
	PrintLine("Interrupt18", InterruptMessagePosition,{255,0,0});
	stop();
	NotifyEndOfInterrupt();
}
__attribute__((interrupt))
void Interrupt_19(InterruptFrame *frame) {
	PrintLine("Interrupt19", InterruptMessagePosition,{255,0,0});
	stop();
	NotifyEndOfInterrupt();
}
__attribute__((interrupt))
void Interrupt_20(InterruptFrame *frame) {
	PrintLine("Interrupt20", InterruptMessagePosition,{255,0,0});
	stop();
	NotifyEndOfInterrupt();
}
__attribute__((interrupt))
void Interrupt_21(InterruptFrame *frame) {
	PrintLine("Interrupt21", InterruptMessagePosition,{255,0,0});
	stop();
	NotifyEndOfInterrupt();
}
__attribute__((interrupt))
void Interrupt_22(InterruptFrame *frame) {
	PrintLine("Interrupt22", InterruptMessagePosition,{255,0,0});
	stop();
	NotifyEndOfInterrupt();
}
__attribute__((interrupt))
void Interrupt_23(InterruptFrame *frame) {
	PrintLine("Interrupt23", InterruptMessagePosition,{255,0,0});
	stop();
	NotifyEndOfInterrupt();
}
__attribute__((interrupt))
void Interrupt_24(InterruptFrame *frame) {
	PrintLine("Interrupt24", InterruptMessagePosition,{255,0,0});
	stop();
	NotifyEndOfInterrupt();
}
__attribute__((interrupt))
void Interrupt_25(InterruptFrame *frame) {
	PrintLine("Interrupt25", InterruptMessagePosition,{255,0,0});
	stop();
	NotifyEndOfInterrupt();
}
__attribute__((interrupt))
void Interrupt_26(InterruptFrame *frame) {
	PrintLine("Interrupt26", InterruptMessagePosition,{255,0,0});
	stop();
	NotifyEndOfInterrupt();
}
__attribute__((interrupt))
void Interrupt_27(InterruptFrame *frame) {
	PrintLine("Interrupt27", InterruptMessagePosition,{255,0,0});
	stop();
	NotifyEndOfInterrupt();
}
__attribute__((interrupt))
void Interrupt_28(InterruptFrame *frame) {
	PrintLine("Interrupt28", InterruptMessagePosition,{255,0,0});
	stop();
	NotifyEndOfInterrupt();
}
__attribute__((interrupt))
void Interrupt_29(InterruptFrame *frame) {
	PrintLine("Interrupt29", InterruptMessagePosition,{255,0,0});
	stop();
	NotifyEndOfInterrupt();
}
__attribute__((interrupt))
void Interrupt_30(InterruptFrame *frame) {
	PrintLine("Interrupt30", InterruptMessagePosition,{255,0,0});
	stop();
	NotifyEndOfInterrupt();
}

__attribute__((interrupt))
void Interrupt_31(InterruptFrame *frame) {
	PrintLine("Interrupt31", InterruptMessagePosition,{255,0,0});
	stop();
	NotifyEndOfInterrupt();
}
__attribute__((interrupt))
void BreakpointInterrupt(InterruptFrame* frame) {
	dPrint("rip : ", frame->rip);
//	WriteMandelbrot(300);
	PrintLine("BreakPoint", InterruptMessagePosition, {255,0,0});
	stop();
	NotifyEndOfInterrupt();
}

__attribute__((interrupt))
void SegFaultInterrupt(InterruptFrame *frame) {
//	WriteMandelbrot(300);
	PrintLine("Segmentation Fault", InterruptMessagePosition, {255,0,0});
	stop();
	NotifyEndOfInterrupt();
}

__attribute__((interrupt))
void PageFaultInterrupt(InterruptFrame* frame) {
//	WriteMandelbrot(300);
	PrintLine("Page Fault", InterruptMessagePosition, {255,0,0});
	stop();
	NotifyEndOfInterrupt();
}

__attribute__((interrupt))
void GeneralProtectionInterrupt(InterruptFrame* frame) {
//	WriteMandelbrot(300);
	PrintLine("General Protection", InterruptMessagePosition, {255,0,0});
	stop();
	NotifyEndOfInterrupt();
}

__attribute__((interrupt))
void KeyboardInterrupt(InterruptFrame* frame) {
	static bool isShift = false;
	unsigned int data;
	unsigned char c;
	IoOut8(PIC0_OCW2, 0x61);
	data = IoIn8(PORT_KEYDAT);

	if(data == 42 || data == 54){ //shiftキーの判定
		isShift = true;
		return;
	}
	if(data == 42 + 0x80 || data == 54 + 0x80) {
		isShift = false;
		return;
	}

	c = keycode[data];
	if(isAlphabet(c) && isShift) c -= 32;

	if(data < 0x80) {
		Input_Buffer.add(c);
	}
	NotifyEndOfInterrupt();
	return;
}

void DefaultInterrupt(InterruptFrame* frame) {
//	WriteMandelbrot(300);
	char str[100];
	PrintLine("some interrupt", InterruptMessagePosition, {255,0,0});
	sprintf(str, "rip : %lx\n", frame->rip);
	PrintLine(str, {400,317}, {255,0,0});
	stop();
	NotifyEndOfInterrupt();
}

void SetIDTEntry(InterruptDescriptor *desc,
		            InterruptDescriptorAttribute attr,
								uint64_t offset,
								uint64_t segment_selector) {
	desc->attr = attr;
	desc->offset_low = offset & 0xffffu;
	desc->offset_middle = (offset >> 16) & 0xffu;
	desc->offset_high = offset >> 32;
	desc->segment_selector = segment_selector;
}
/* 
void NotifyEndOfInterrupt() {
	volatile auto end_of_interrupt = reinterpret_cast<uint32_t*>(0xfee000b0);
	*end_of_interrupt = 5;
}
// */

void InitializePIC() {
	IoOut8(PIC0_IMR, 0xff);
	IoOut8(PIC1_IMR, 0xff);
	
	IoOut8(PIC0_ICW1, 0x11);
	IoOut8(PIC0_ICW2, 0x20);
	IoOut8(PIC0_ICW3, 1<<2);
	IoOut8(PIC0_ICW4, 0x01);
	
	IoOut8(PIC1_ICW1, 0x11);
	IoOut8(PIC1_ICW2, 0x28);
	IoOut8(PIC1_ICW3, 2);
	IoOut8(PIC1_ICW4, 0x01);

	IoOut8(PIC0_IMR, 0b11111001);
	IoOut8(PIC1_IMR, 0b11110111);
}

void InitializeInterrupt() {
	uint16_t cs = GetCS();
	for(int i = 0; i < 256; i++) {
		SetIDTEntry(&idt[i], MakeIDTAttr(DescriptorType::kInterruptGate, 0),
				reinterpret_cast<uint64_t>(DefaultInterrupt), cs);
	}
	SetIDTEntry(&idt[0x3], MakeIDTAttr(DescriptorType::kInterruptGate, 0),
				reinterpret_cast<uint64_t>(BreakpointInterrupt), cs);
	SetIDTEntry(&idt[0x21], MakeIDTAttr(DescriptorType::kInterruptGate, 0),
				reinterpret_cast<uint64_t>(KeyboardInterrupt), cs);
	SetIDTEntry(&idt[0xc], MakeIDTAttr(DescriptorType::kInterruptGate, 0),
				reinterpret_cast<uint64_t>(SegFaultInterrupt), cs);
	SetIDTEntry(&idt[0xd], MakeIDTAttr(DescriptorType::kInterruptGate, 0),
				reinterpret_cast<uint64_t>(GeneralProtectionInterrupt), cs);
	SetIDTEntry(&idt[0xe], MakeIDTAttr(DescriptorType::kInterruptGate, 0),
				reinterpret_cast<uint64_t>(PageFaultInterrupt), cs);
	SetIDTEntry(&idt[1], MakeIDTAttr(DescriptorType::kInterruptGate, 0),
				reinterpret_cast<uint64_t>(Interrupt_1), cs);
	SetIDTEntry(&idt[2], MakeIDTAttr(DescriptorType::kInterruptGate, 0),
				reinterpret_cast<uint64_t>(Interrupt_2), cs);
	SetIDTEntry(&idt[4], MakeIDTAttr(DescriptorType::kInterruptGate, 0),
				reinterpret_cast<uint64_t>(Interrupt_4), cs);
	SetIDTEntry(&idt[5], MakeIDTAttr(DescriptorType::kInterruptGate, 0),
				reinterpret_cast<uint64_t>(Interrupt_5), cs);
	SetIDTEntry(&idt[6], MakeIDTAttr(DescriptorType::kInterruptGate, 0),
				reinterpret_cast<uint64_t>(Interrupt_6), cs);
	SetIDTEntry(&idt[7], MakeIDTAttr(DescriptorType::kInterruptGate, 0),
				reinterpret_cast<uint64_t>(Interrupt_7), cs);
	SetIDTEntry(&idt[8], MakeIDTAttr(DescriptorType::kInterruptGate, 0),
				reinterpret_cast<uint64_t>(Interrupt_8), cs);
	SetIDTEntry(&idt[9], MakeIDTAttr(DescriptorType::kInterruptGate, 0),
				reinterpret_cast<uint64_t>(Interrupt_9), cs);
	SetIDTEntry(&idt[10], MakeIDTAttr(DescriptorType::kInterruptGate, 0),
				reinterpret_cast<uint64_t>(Interrupt_10), cs);
	SetIDTEntry(&idt[11], MakeIDTAttr(DescriptorType::kInterruptGate, 0),
				reinterpret_cast<uint64_t>(Interrupt_11), cs);
	SetIDTEntry(&idt[15], MakeIDTAttr(DescriptorType::kInterruptGate, 0),
				reinterpret_cast<uint64_t>(Interrupt_15), cs);
	SetIDTEntry(&idt[16], MakeIDTAttr(DescriptorType::kInterruptGate, 0),
				reinterpret_cast<uint64_t>(Interrupt_16), cs);
	SetIDTEntry(&idt[17], MakeIDTAttr(DescriptorType::kInterruptGate, 0),
				reinterpret_cast<uint64_t>(Interrupt_17), cs);
	SetIDTEntry(&idt[18], MakeIDTAttr(DescriptorType::kInterruptGate, 0),
				reinterpret_cast<uint64_t>(Interrupt_18), cs);
	SetIDTEntry(&idt[19], MakeIDTAttr(DescriptorType::kInterruptGate, 0),
				reinterpret_cast<uint64_t>(Interrupt_19), cs);
	SetIDTEntry(&idt[20], MakeIDTAttr(DescriptorType::kInterruptGate, 0),
				reinterpret_cast<uint64_t>(Interrupt_20), cs);
	SetIDTEntry(&idt[21], MakeIDTAttr(DescriptorType::kInterruptGate, 0),
				reinterpret_cast<uint64_t>(Interrupt_21), cs);
	SetIDTEntry(&idt[22], MakeIDTAttr(DescriptorType::kInterruptGate, 0),
				reinterpret_cast<uint64_t>(Interrupt_22), cs);
	SetIDTEntry(&idt[23], MakeIDTAttr(DescriptorType::kInterruptGate, 0),
				reinterpret_cast<uint64_t>(Interrupt_23), cs);
	SetIDTEntry(&idt[24], MakeIDTAttr(DescriptorType::kInterruptGate, 0),
				reinterpret_cast<uint64_t>(Interrupt_24), cs);
	SetIDTEntry(&idt[25], MakeIDTAttr(DescriptorType::kInterruptGate, 0),
				reinterpret_cast<uint64_t>(Interrupt_25), cs);
	SetIDTEntry(&idt[26], MakeIDTAttr(DescriptorType::kInterruptGate, 0),
				reinterpret_cast<uint64_t>(Interrupt_26), cs);
	SetIDTEntry(&idt[27], MakeIDTAttr(DescriptorType::kInterruptGate, 0),
				reinterpret_cast<uint64_t>(Interrupt_27), cs);
	SetIDTEntry(&idt[28], MakeIDTAttr(DescriptorType::kInterruptGate, 0),
				reinterpret_cast<uint64_t>(Interrupt_28), cs);
	SetIDTEntry(&idt[29], MakeIDTAttr(DescriptorType::kInterruptGate, 0),
				reinterpret_cast<uint64_t>(Interrupt_29), cs);
	SetIDTEntry(&idt[30], MakeIDTAttr(DescriptorType::kInterruptGate, 0),
				reinterpret_cast<uint64_t>(Interrupt_30), cs);
	SetIDTEntry(&idt[31], MakeIDTAttr(DescriptorType::kInterruptGate, 0),
				reinterpret_cast<uint64_t>(Interrupt_31), cs);


	LoadIDT(sizeof(idt)-1, reinterpret_cast<uintptr_t>(idt));
	return;
}
