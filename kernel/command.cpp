#include <string.h>
#include <stdlib.h>
#include "frame.hpp"
#include "memory_map.hpp"
#include "memory_manager.hpp"

extern BitmapMemoryManager* memory_manager;

int command(char *str) {
	uintptr_t ptr;
	if(strcmp(str, "") == 0) { // no input
		return 0;
	} else if(strcmp(str, "mandelbrot") == 0) {    //mandelbrot
		WriteMandelbrot(300);
		Printf("done.\n");
		return 0;
	} else if(strcmp(str, "clear") == 0) {  	//clear
		clear();
		Printf("done.\n");
		return 0;
	} else if(strcmp(str, "int3") == 0) {   	//int3
		asm("int3");
		return 0;
	} else {
		ptr = strtol(str, NULL, 16);
		if(ptr != 0){ 													//memory type
			Printf("%p : ", ptr);
			if(memory_manager->IsAvailable(ptr)) {
				Printf("Available\n");
			} else {
				Printf("not Available\n");
			}
			Printf("memory_map : %d\n", search_mem_type(ptr));
			return 0;
		}
	Printf("%s not found\n", str);
	return 0;
	}
}
