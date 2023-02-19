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

void stop(void);

inline bool isAlphabet(char c) {
	return (c >= 'a' && c <= 'z') || (c <= 'A' && c >= 'Z');
}

__attribute__((interrupt))
void BreakpointInterrupt(InterruptFrame* frame) {
	Printf("\nrip : %p", frame->rip);
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
	if(data == 43 + 0x80 || data == 54 + 0x80) {
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
	sprintf(str, "rip : %p\n", frame->rip);
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
	
	LoadIDT(sizeof(idt)-1, reinterpret_cast<uintptr_t>(idt));
	return;
}
