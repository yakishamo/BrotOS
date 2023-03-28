#pragma once

#include <stdint.h>
#include "boot_types.h"

extern "C" {
	void IoOut32(uint16_t addr, uint32_t data);
	uint32_t IoIn32(uint16_t addr);
	uint16_t IoIn16(uint16_t addr);
	void IoOut8(uint16_t addr, uint8_t data);
	uint8_t IoIn8(uint16_t addr);
	void call_kernel_main(bootinfo_t *binfo, void* entry_point, uint8_t* new_stack);
	void LoadGDT(uint16_t limit, uint64_t offset);
	void SetDSAll(uint16_t value);
	void SetCSSS(uint16_t cs, uint16_t ss);
	uint16_t GetCS();
	void LoadIDT(uint16_t limit, uint64_t offset);
	void SetCR3(uint64_t value);
	void NotifyEndOfInterrupt();
	uint64_t rdtsc();
}
