#include <stddef.h>
#include "error.hpp"
#include "asmfunc.hpp"
#include <stdint.h>
#include "boot_types.h"
#include "type.hpp"
#include "macro.hpp"
#include "frame.hpp"
#include "pci.hpp"
#include "memory_map.hpp"
#include "segment.hpp"
#include "interrupt.hpp"
#include "paging.hpp"
#include "pic.hpp"
#include "keyboard.hpp"
#include "input.hpp"
#include "command.hpp"
#include "memory_manager.hpp"
#include <string.h>
#include <stdio.h>

extern video_info_t *vinfo;
extern InterruptDescriptor idt[256];
extern char keycode[0x100];
extern MemoryMap *mmap;

alignas(16) uint8_t kernel_main_stack[1024 * 1024];
InputBuffer Input_Buffer;
char memory_manager_buf[sizeof(BitmapMemoryManager)];
BitmapMemoryManager* memory_manager;

void stop() {
	while(1) __asm__("hlt");
}

extern "C" void kernel_main(bootinfo_t*);
extern "C" void entry_point(bootinfo_t *binfo) {
	call_kernel_main(binfo, (void*)kernel_main, kernel_main_stack);
	return;
}

extern "C" void kernel_main(bootinfo_t *binfo)
{
	SetupIdentityPageTable();
	InitializeKeycode();
	InitializeFrame(binfo);
	uint32_t x_axis = vinfo->x_axis;
	uint32_t y_axis = vinfo->y_axis;
	mmap = binfo->memory_map;

	WriteSquare({0,0}, {static_cast<int>(x_axis), static_cast<int>(y_axis)}, {0,0,0});

	const uint16_t kernel_cs = 1 << 3;
	const uint16_t kernel_ss = 2 << 3;
	InitializeSegment(kernel_cs, kernel_ss);

	InitializeInterrupt();
	InitializePIC();

	memory_manager = new(memory_manager_buf) BitmapMemoryManager;
	InitializeMemoryManager(memory_manager, mmap);
	
	if(Error err = InitializeHeap(*memory_manager)) {
		Printf("InitializeHeap returned error.\n");
		Printf("err : %d\n", err.Cause());
		stop();
	}
	

	show_memory_map();
	Printf("mmap : %d\n", search_mem_type(reinterpret_cast<uintptr_t>(&mmap)));
	char str[1000];
	Printf("kernel : %p\n", kernel_main);
	Printf("kernel stack : %p\n", kernel_main_stack);
	Printf("kernel stack end : %p\n", kernel_main_stack + 1024*1024);
	Printf("keycode : %p\n", keycode);
	while(1) {
		Printf("Enter command >");
		GetString(str);
		command(str);
	}
	stop();

}

