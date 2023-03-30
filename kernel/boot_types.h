#ifndef BOOT_TYPES_H
#define BOOT_TYPES_H

#include <stdint.h>
#include "font.h"
#include "memory_map.hpp"

enum PixelFormat {
	RGB,
	BGR,
};

typedef struct video_info_t {
	uint64_t *fb;
	uint64_t fb_size;
	uint32_t x_axis;
	uint32_t y_axis;
	uint32_t ppsl;
	enum PixelFormat format;
} video_info_t;

typedef struct bootinfo_t {
	video_info_t vinfo;
	FONT *ascii_font;
	struct MemoryMap *memory_map;
} bootinfo_t;

#endif
