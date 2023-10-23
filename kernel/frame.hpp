#ifndef FRAME_HPP_INCLUDED
#define FRAME_HPP_INCLUDED

#include "type.hpp"
#include "../boot/boot_types.h"

void InitializeFrame(bootinfo_t *binfo);
int WriteAscii(char c, Color color, int x, int y);
int WriteSquare(Vector p1, Vector p2, Color c); //左上、右下、塗りつぶしの色
int PrintLine(char const *str, Vector point, Color c) __attribute__((no_caller_saved_registers));
void dPrint(const char *str, int a) __attribute__((no_caller_saved_registers));
void udPrint(char *str, unsigned int a);
void uxdPrint(char *str, unsigned int a);
void WriteMandelbrot(int time);
void clear();
extern int (*WritePixel)(Color c, int x, int y);

#ifdef C_LANG
int Print(const char *str);
int Printf(const char *format, ...);
#else
extern "C" int Print(const char *str);
extern "C" int Printf(const char *format, ...);
#endif

#endif
