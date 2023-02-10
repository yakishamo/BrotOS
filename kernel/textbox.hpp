#pragma once
#include "type.hpp"
#include <queue>

class TextBox {
	public:
		TextBox(Vector position, Vector end_position) : 
			position_{position},
			end_position_{end_position},
			line_max_{(end_position.y - position.y)/17},
			string_len_max_{(end_position.x - position.x)/9}
		{
			string_queue_ = new std::deque<char*>(line_max_);
		}
		void print(char *format, ...);
	private:
		void showstring(char *str);
		Vector position_;
		Vector end_position_;
		int line_max_;
		int string_len_max_;
		std::deque<char*> *string_queue_;
};
