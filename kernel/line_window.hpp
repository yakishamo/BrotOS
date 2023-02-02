#pragma once

class LineWindow {
	public:
		LineWindow(int pos_x, int pos_y, int line_str_limit_, int line_num_limit_) : 
			pos_x_{pos_x},
			pos_y_{pos_y}, 
			line_str_limit_{line_str_limit}, 
			line_num_limit_{line_num_limit} 
		{}
		void print(const char *format, ...);
		void clear();

	private:
		char *RegisterLine(const char *str);

		int pos_x_;
		int pos_y_;
		int line_str_limit_;
		int line_num_limit_;
		std::queue<const char*> line_queue_;
}
