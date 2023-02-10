#include "textbox.hpp"
#include "type.hpp"
#include "frame.hpp"
#include <stdio.h>
#include <stdarg.h>
#include <stdlib.h>
#include <string.h>

#define MAX_PRINT_LEN 0x1000

void TextBox::print(char *format, ...) {
	char str[MAX_PRINT_LEN];
	va_list args;
	va_start(args, format);
	vsnprintf(str, MAX_PRINT_LEN, format, args);
	showstring(str);
	va_end(args);
}

void TextBox::showstring(char *str) {
	char *string_in_queue = (char *)malloc(strlen(str));
	bool isMax = string_queue_->size() == line_max_;
	if(isMax) {
		char *temp = string_queue_->front();
		string_queue_->pop_back();
		free(temp);
	}
	string_queue_->push_back(string_in_queue);
	for(int i = 0; i < string_queue_->size(); i++) {
		int string_size = strlen((char*)(*string_queue_)[i]);
		WriteSquare({position_.x, position_.y + i*17},
				{position_.x + string_size*9, position_.y+9},
				{0,0,0});
		PrintLine((*string_queue_)[i], {position_.x, position_.y + i*17}, {255,255,255});
	}
}
