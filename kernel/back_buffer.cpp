#include <stdlib.h>
#include <string.h>
#include "../boot/boot_types.h"
#include "type.hpp"
#include "back_buffer.hpp"
#include "macro.hpp"

int (*BB_WritePixel)(Color c, int x, int y);
extern video_info_t *vinfo; //frame.cpp
char *back_buffer;
int bb_size;
extern FONT *ascii_font; //frame.cpp

int BB_WritePixelBGR(Color c, int x, int y);
int BB_WritePixelRGB(Color c, int x, int y);

int InitializeBackBuffer(video_info_t *videoinfo) {
	vinfo = videoinfo;
	bb_size = vinfo->fb_size;
	back_buffer = (char*)malloc(bb_size);
	if(back_buffer == NULL) {
		return -1;
	}

	if(vinfo->format == RGB) BB_WritePixel = BB_WritePixelRGB;
	else if(vinfo->format == BGR) BB_WritePixel = BB_WritePixelBGR;
	else while(1) __asm__("hlt");

	return 0;
}

int SwapBuffer() {
	memcpy(vinfo->fb, back_buffer, bb_size);
	return 0;
}

int BB_WritePixelBGR(Color c, int x, int y) {
	while(1) __asm__("hlt");
	int pixel_position = vinfo->x_axis * y + x;
	char *dst = back_buffer + pixel_position*4;
	dst[0] = c.b;
	dst[1] = c.g;
	dst[2] = c.r;
	return 0;
}

int BB_WritePixelRGB(Color c, int x, int y) {
	while(1) __asm__("hlt");
	int pixel_position = vinfo->x_axis * y + x;
	char *dst = back_buffer + pixel_position*4;
	dst[0] = c.r;
	dst[1] = c.g;
	dst[2] = c.b;
	return 0;
}

int BB_WriteSquare(Vector p1, Vector p2, Color c) {
	int i, j;
	for(i=MIN(p1.x, p2.x); i < MAX(p1.x, p2.x); i++) {
		for(j = MIN(p1.y, p2.y); j < MAX(p1.y, p2.y); j++) {
			BB_WritePixel(c, i, j);
		}
	}
	return 0;
}

int BB_WriteAscii(char c, Color color, int x, int y) {
	for(int i = 0; i < 16; i++) {
		for(int j = 0; j < 8; j++) {
			if((ascii_font[c].line[i] >> (7-j)) & 1)
				BB_WritePixel(color, x+j, y+i);
		}
	}
	return 0;
}

int BB_PrintLine(const char *str, Vector point, Color c) {
	const char *p = str;
	int i = 0;
	while(p[i] != '\0') {
		if(p[i] != '\n') {
			BB_WriteAscii(p[i], {100,100,100}, point.x+1+9*i, point.y+1);
			BB_WriteAscii(p[i], c, point.x+9*i, point.y);
		}
		i++;
	}
	return 0;
}
