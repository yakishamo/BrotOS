#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "font.h"

int main(void) {
	FILE *fp;
	if((fp = fopen("hankaku.txt", "r")) == NULL) {
		fprintf(stderr, "failed open hankaku.txt\n");
		exit(1);
	}
	int i, j, k;
	int num = 0;
	FONT font[256];
	char line[9] = {0,0,0,0,0,0,0,0,0};
	char line_num = 0;
	char temp = 0;

	for(i = 0; i < 0x100; i++) {
		fscanf(fp, "\n0x%x", &num);
		while(temp != '\n') fread(&temp, 1, 1, fp);
		temp = 0;
		for(k = 0; k  < 16; k++) {
			fscanf(fp, "%s\n", line);
			line_num = 0;
			for(j = 0; j < 8; j++) {
				line_num += ((line[7-j] == '@') << j);
			}
			font[i].line[k] = line_num;
		}
	}

	fclose(fp);

	if((fp = fopen("hankaku", "wb")) == NULL) {
		fprintf(stderr, "failed open hankaku\n");
		exit(2);
	}

	fwrite(font, sizeof(FONT), 256, fp);
	fclose(fp);
	
	return 0;
}
