#pragma once

typedef struct {
	char name[100];
	int size;
} FileInfo;

class File {
	private:
		char file_data[100*1024];
		FileInfo file_info;

