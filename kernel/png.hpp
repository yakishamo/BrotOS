#pragma once

typedef struct {
	uint32_t length;
	uint32_t type;
	void *data;
	uint32_t CRC;
} Png_Chunk;

typedef struct {
	uint32_t width;
	uint32_t height;
	uint8_t bit_depth;
	uint8_t color_type;
	uint8_t compression;
	uint8_t filter;
	uint8_t interlace;
} IHDR_data;

