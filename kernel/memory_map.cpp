#include "memory_map.hpp"
#include "frame.hpp"
#include <stdlib.h>
#include <stdio.h>

MemoryMap *mmap;

void show_memdesc(int i) {
	Printf("type : %d phis_start : %x page_num : %d\n",
			DESC(i)->type, DESC(i)->physical_start, DESC(i)->number_of_pages);
	return;
}

void show_memory_map() {
	char str[200];
	char buf[20];
	int i = 0;

	Printf("map size : %d\n", mmap->map_size);
	Printf("buf size : %d\n", mmap->buffer_size);
	Printf("desc num : %d\n", mmap->map_size/mmap->descriptor_size);
	Printf("desc size : %d\n", mmap->descriptor_size);
	Printf("sizeof(MemoryDescriptor) : %d\n", sizeof(MemoryDescriptor));

	int sum_of_pages = 0;
	for(i = 0; i <  10/*mmap->map_size/mmap->descriptor_size*/; i++) {
		show_memdesc(i);
		sum_of_pages += DESC(i)->number_of_pages;
	}
	Printf("sum of pages : %d\n", sum_of_pages);

	return;
}

uint32_t search_mem_type(uintptr_t ptr) {
	int i;
	
	for(i = 0; i < mmap->map_size/mmap->descriptor_size; i++) {
		if(DESC(i)->physical_start >= ptr) return DESC(i-1)->type;
	}
	return 0x15;
}
