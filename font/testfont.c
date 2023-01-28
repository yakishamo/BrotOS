#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "font.h"

int main() {
	FONT ascii_font[256];

	FILE *fp;
	fp = fopen("hankaku", "rb");

	fread(ascii_font, sizeof(FONT), 256, fp);

	for(char c = 'a'; c <= 'c'; c++){
	for(int i = 0; i < 16; i++) {
		for(int j = 0; j < 8; j++) {
			if((ascii_font[c].line[i] >> 7-j) & 1)
				printf("@");
			else
				printf(" ");
		}
		printf("\n");
	}
	printf("///////////////////////\n");
	}

	return 0;
}
