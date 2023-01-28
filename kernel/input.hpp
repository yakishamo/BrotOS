#pragma once
#include "frame.hpp"

class InputBuffer {
private:
	static const int buffer_size = 1000;
	char buffer[buffer_size+1];
	int first, read, last;
	int not_read_char_num;
	int input_size;

public:
	InputBuffer() {
		first = 0;
		read = 0;
		last = 0;
		not_read_char_num = 0;
		input_size = 0;
		buffer[buffer_size] = 0; //allpopのときのstrcpyのため
	}
	int add(char c);       //１文字バッファに追加（割り込みから呼び出し）
	bool isEnter();        //firstとlastの間に改行文字があるかどうか判定
	inline bool isInput() {
		return read != last;
	}
	void show_addr() {
		Printf("input_size: %p\nbuffer: %p\nfirst: %p\nread: %p\nlast: %p\n",
				&input_size, buffer, &first, &read, &last);
	}	
	char pop();            //readにある１文字を返してreadをインクリメント
	void allprint();       //readからの文字列を出力
	int allpop(char *str); //firstから次の改行文字までの文字列をstrにコピーして返す
};

void GetString(char *str);
