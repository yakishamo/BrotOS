#ifndef BACK_BUFFER_HPP_INCLUDED
#define BACK_BUFFER_HPP_INCLUDED

extern int (*BB_WritePixel)(Color c, int x, int y);
int InitializeBackBuffer(video_info_t *vinfo);
int SwapBuffer();
int BB_WriteSquare(Vector p1, Vector p2, Color c);
int BB_PrintLine(const char *str, Vector point, Color c);
int BB_WriteAscii(char c, Color color, int x, int y);

#endif /* BACK_BUFFER_HPP_INCLUDED */
