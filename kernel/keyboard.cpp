#include "keyboard.hpp"

char keycode[0x100] = "\000\0001234567890-^\b\0qwertyuiop@[\0\0asdfghjkl;:]\0\0zxcvbnm,./";

void InitializeKeycode () {

	for(int i = 54; i < 0x100; i++) {
		keycode[i] = '\0';
	}
	keycode[43] = ']';
	keycode[28] = '\n';
	keycode[57] = ' ';
	keycode[115] = '\\';
	keycode[125] = '\\';
	return;
}
