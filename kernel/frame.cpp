#include "frame.hpp"
#include "../boot/boot_types.h"
#include "type.hpp"
#include "macro.hpp"
#include "back_buffer.hpp"
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdarg.h>

video_info_t *vinfo;
FONT *ascii_font;
int line_queue_head = 0;
int line_queue_end = 0;
int line_len_max = 40;
int max_line = 0;
char line_queue[200][100];
int (*WritePixel)(Color c, int x, int y);

int WritePixelRGB(Color,int,int);
int WritePixelBGR(Color,int,int);

void InitializeFrame(bootinfo_t *binfo) {
	vinfo = &binfo->vinfo;
	ascii_font = binfo->ascii_font;
	max_line = vinfo->y_axis/17;
	if(vinfo->format == RGB) WritePixel = WritePixelRGB;
	else if(vinfo->format == BGR) WritePixel = WritePixelBGR;
	else {
		for(int i = 0; i < 0x1920000;i++) vinfo->fb[i] = 0xff;
		while(1) __asm__("hlt");
	}
}

Color HashtoColor(uint8_t c) {
	Color ret;
	ret.r = (c&0xff0000) / 0x1000;
	ret.g = (c&0x00ff00) / 0x100;
	ret.b = (c&0x0000ff);
	return ret;
}

Color HSVtoRGB(int c) {
	Color ret;
	c %= 1536;
	if(c < 256) ret = {255,static_cast<uint8_t>(c),0};
	else if(c < 512)  ret = {static_cast<uint8_t>(255-(c%256)), 255, 0};
	else if(c < 768)  ret = {0, 255, static_cast<uint8_t>(c%256)};
	else if(c < 1024) ret = {0, static_cast<uint8_t>(255-(c%256)), 255};
	else if(c < 1280) ret = {static_cast<uint8_t>(c%256), 0, 255};
	else              ret = {255, 0, static_cast<uint8_t>(255-(c%256))};
	return ret;
}

int WritePixelRGB(Color c, int x, int y) {
	int pixelposition = vinfo->x_axis * y + x;
	char *dst = (char *)vinfo->fb + pixelposition * 4;
	dst[0] = c.r;
	dst[1] = c.g;
	dst[2] = c.b;
	return 0;
}

int WritePixelBGR(Color c, int x, int y) {
	int pixelposition = vinfo->x_axis * y + x;
	char *dst = (char *)vinfo->fb + pixelposition * 4;
	dst[0] = c.b;
	dst[1] = c.g;
	dst[2] = c.r;
	return 0;
}



int WriteAscii(char c, Color color, int x, int y) {
	for(int i = 0; i < 16; i++) {
		for(int j = 0; j < 8; j++) {
			if((ascii_font[c].line[i] >> 7-j) & 1)
				BB_WritePixel(color, x+j, y+i);
		}
	}
	SwapBuffer();
	return 0;
}

int WriteSquare(Vector p1, Vector p2, Color c) {
	int i, j;
	for(i = MIN(p1.x, p2.x); i < MAX(p1.x, p2.x); i++) {
		for(j = MIN(p1.y, p2.y); j < MAX(p1.y, p2.y); j++) {
			BB_WritePixel(c, i, j);
		}
	}
	SwapBuffer();
	return 0;
}

int PrintLine(const char *str, Vector point, Color c) {
	const char *p = str;
	int i = 0;
	while(p[i] != '\0') {
			if(p[i] != '\n') {
			BB_WriteAscii(p[i], {100,100,100}, point.x+1+9*i, point.y+1); //文字の影
			BB_WriteAscii(p[i], c, point.x + 9*i, point.y);
		}
		i++;
	}
	SwapBuffer();
	return 0;
}

char *RegisterLine(const char *str) {
	char *ret = NULL;
	ret = strcpy(line_queue[line_queue_end], str);
	line_queue_end = (line_queue_end + 1) % max_line;
	if(line_queue_end == line_queue_head)
		line_queue_head = (line_queue_head + 1) % max_line;
	return ret;
}

/*
extern "C" int Print(const char *str) {
	int y = 0, len;
	char line[line_len_max + 1];
	len = strlen(str);
	strncpy(line, str, line_len_max);
	RegisterLine(line);
	for(int i = line_queue_head; i != line_queue_end; i = (i + 1) % max_line) {
		WriteSquare({0,y}, {9*line_len_max,y+17}, {0,0,0});
		PrintLine(line_queue[i], {0, y+1}, {255,255,255});
		y += 17;
	}
	if(len > line_len_max) Print(str+line_len_max-1);
	return 0;
}
// */

extern "C" int Print(const char *str) {
	static int y = 0;
	static char line[1000];
	static int debug = 0;
	strcat(line, str);
	char next_line[line_len_max+1];
	if(strlen(line) > line_len_max) {
		strcpy(next_line, &line[line_len_max]);
		line[line_len_max] = '\0';
		RegisterLine(line);
		line[0] = '\0';
		Print(next_line);
		return 0;
	} else if((strlen(line) - strlen(str)) != 0){
		BB_WriteSquare({0,y}, {9*line_len_max, y+17}, {0,0,0});
		BB_PrintLine(line, {0, y}, {255,255,255});
		SwapBuffer();
		if(line[strlen(line)-1] == '\n') {
			RegisterLine(line);
			line[0] = '\0';
		}
		return 0;
	} else {
		y = 0;
		for(int i = line_queue_head; i != line_queue_end; i = (i+1)%max_line) {
			BB_WriteSquare({0,y}, {9*line_len_max, y+17}, {0,0,0});
			BB_PrintLine(line_queue[i], {0,y}, {255,255,255});
			SwapBuffer();
			y += 17;
		}
		BB_WriteSquare({0,y}, {9*line_len_max, y+17}, {0,0,0});
		BB_PrintLine(line, {0, y}, {255,255,255});
		SwapBuffer();
		if(line[strlen(line)-1] == '\n') {
			RegisterLine(line);
			line[0] = '\0';
		}
		return 0;
	}
}


int Printf(const char *format, ...) {
	va_list ap;
	static char str_for_Printf[1000];   //= reinterpret_cast<char *>(malloc(strlen(format) + 500));
	va_start(ap, format);
	vsprintf(str_for_Printf, format, ap);
	va_end(ap);
	Print(str_for_Printf);
	return 0;
}

void dPrint(char *str, int a) {
	char buf[strlen(str)+50];
	sprintf(buf, "%s%d", str, a);
	Print(buf);
	return;
}

void udPrint(char *str, unsigned int a) {
	char buf[strlen(str)+50];
	sprintf(buf, "%s%d", str, a);
	Print(buf);
	return;
}

void uxdPrint(char *str, unsigned int a) {
	char buf[strlen(str)+50];
	sprintf(buf, "%s%x", str, a);
	Print(buf);
	return;
}

inline int CalcMandelbrot(int x, int y, int time) {
	int width = vinfo->x_axis,
			height = vinfo->y_axis,
			m = MIN(width, height),
			i;
	double zr, zi, tmp, cr, ci;
	zr = zi = 0;
	cr = -1.3 + (x - (double)width/2)/m/5;
	ci = 0 + (y - (double)height/2)/m/5;
	for(i = 0; i<=time; i++) {
		if(zr*zr+zi*zi > 4) return i;
		tmp = zr*zr-zi*zi + cr;
		zi = 2*zr*zi + ci;
		zr = tmp;
	}
	return i;
}

void WriteMandelbrot(int time){
	uint8_t color_num = 0;
	for(int i = 0; i < vinfo->y_axis; i++) {
		for(int j = 0; j < vinfo->x_axis; j++) {
			color_num = CalcMandelbrot(j, i, time);
			BB_WritePixel({static_cast<uint8_t>(color_num*4), 0, 0},
					vinfo->x_axis - j, i);
		}
	}
	SwapBuffer();
	return;
}

void clear() {
	BB_WriteSquare(
			{0,0},
			{static_cast<int>(vinfo->x_axis), static_cast<int>(vinfo->y_axis)},
			{0,0,0});
	line_queue_head = 0;
	line_queue_end = 0;
	SwapBuffer();
	return;
}

