#include <string.h>
#include "frame.hpp"
#include "input.hpp"

extern InputBuffer Input_Buffer;

int InputBuffer::add(char c) {
	if(c == '\b' && input_size > 0) {
		if(read == last) {
			read = (read-1) % buffer_size;
		}
		last = (last-1) % buffer_size;
		buffer[last] = '\0';
		input_size--;
		return 0;
	} else if(c == '\b' && input_size == 0) {
		return 0;
	} else if(input_size < buffer_size) {
		buffer[last] = c;
		last = (last+1) % buffer_size;
		input_size++;
		return 0;
	} else {
		asm("int3");
		return 1;
	}
}

bool InputBuffer::isEnter() {
	int i = first;
	while(i != last) {
		if(buffer[i] == '\n') return true;
		i = (i+1) % buffer_size;
	}
	return false;
}

char InputBuffer::pop() {
	if(read != last){
		read = (read+1) % buffer_size;
		return buffer[(read-1) % buffer_size];
	}
	else return 0;
}

void InputBuffer::allprint() {
	Printf("%s", &buffer[read]);
	if(read > last) Printf("%s", buffer);
	return;
}

int InputBuffer::allpop(char *str) {
	buffer[(last-1) % buffer_size] = '\0';
	strcpy(str, &buffer[first]);
	if(last < first) strcat(str, buffer);
	first = last;
	read = last;
	input_size = 0;
	return strlen(str);
}

void GetString(char *str) {
	int i = 0;
	while(1) {
		if(Input_Buffer.isInput()) {
			Printf("%c", Input_Buffer.pop());
		}
		if(Input_Buffer.isEnter()) {
			Input_Buffer.allprint();
			Input_Buffer.allpop(str);
			return;
		}
	}
}

