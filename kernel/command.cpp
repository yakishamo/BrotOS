#include <string.h>
#include <stdlib.h>
#include "timer.hpp"
#include "frame.hpp"
#include "memory_map.hpp"
#include "memory_manager.hpp"
#include "asmfunc.hpp"

#define ISTOKEN(a,b) strcmp(tok[(a)],(b))==0

extern BitmapMemoryManager* memory_manager;

//トークン列を生成
//最後の要素はNULL
char **tokenize(char *str) {
	//トークンの個数を数える
	int len = strlen(str);
	int i = 0;
	int token_num = 1;
	while(i < len) {
		if(str[i] == ' ') {
			str[i++] = '\0';
			while(str[i] == ' ' && i < len) i++;
			if(i != len) token_num++;
		}
		i++;
	}
	//Printf("token num : %d\n", token_num);

	//トークン列の生成
	i = 0;
	int j = 0;
	char **ret = (char**)malloc(sizeof(char*)*token_num + 1);
	
	while((str[i] == ' ' || str[i] == '\0') && i < len) i++; //最初の空白を飛ばす
	while(i < len) {
		ret[j] = (char*)malloc(strlen(str+i));
		strcpy(ret[j], str+i);
		while(str[i] != ' ' && str[i] != '\0' && i < len) i++;
		while((str[i] == ' ' || str[i] == '\0') && i < len) i++;
		j++;
}
	ret[j] = NULL;
	return ret;
}

void free_token(char **tok) {
	int i = 0;
	while(tok[i] != NULL) {
		free(tok[i]);
		i++;
	}
	return;
}

void show_token(char **tok) {
	int i = 0;
	if(tok[0] == NULL) 
		Printf("NULL token\n");
	while(tok[i] != NULL) {
	Printf("%s\n", tok[i]);
		Printf("len..%d\n", strlen(tok[i]));
		i++;
	}
}

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

int command(char **tok) {
	if(tok[0] == NULL) {
		return 0;
	} else if(ISTOKEN(0,"echo")) {
		int i = 1;
		while(tok[i] != NULL) {
			Printf("%s",tok[i]);
			if(tok[i+1] != NULL) {
				Printf(" ");
			}
			i++;
		}
		Printf("\n");
		return 0;
	} else if(ISTOKEN(0,"mandelbrot")) {
		int time = 500;
		if(tok[1] != NULL) {
			if((time = atoi(tok[1])) == 0) {
				time = 500; //デフォルトの値
			}
		}
		WriteMandelbrot(time);
		return 0;
	} else if(ISTOKEN(0,"clear")) {
		clear();
		return 0;
	} else if(ISTOKEN(0,"check")) {
		if(tok[1] == NULL) {
			Printf("check: not enough arguments\n");
			return 1;
		}
		if(ISTOKEN(1,"memory")) {
			if(tok[2] != NULL) {
				uintptr_t p = (uintptr_t)strtol(tok[2], NULL, 0);
				Printf("%p : %d\n", p, search_mem_type(p));
				return 0;
			} else {
				Printf("check: not enough arguments\n");
				return 1;
			}
		} else {
			Printf("check: illegal operation\n");
			return 1;
		}
	} else if(ISTOKEN(0,"clear")) {
		clear();
		return 0;
	} else if(ISTOKEN(0,"time")) {
		uint32_t time = LAPICTimer();
		command(tok+1);
		time = LAPICTimer() - time;
		Printf("time : %d\n", time);
		return 0;
	} else if(ISTOKEN(0,"rdtsc")) {
		uint64_t time = rdtsc();
		command(tok+1);
		time = rdtsc() - time;
		Printf("rdtsc : %d\n", time);
		return 0;
	} else {
		Printf("%s is not found.\n", tok[0]);
		return 1;
	}
}
