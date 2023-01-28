#pragma once

#include <stdint.h>

typedef unsigned int u_int;
typedef struct {
	uint8_t r;
	uint8_t g;
	uint8_t b;
}__attribute__((packed)) Color;

typedef struct {
	int x;
	int y;
} Vector;

//typedef void* va_list;
