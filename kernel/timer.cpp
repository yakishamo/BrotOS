#include "timer.hpp"

namespace {
	const uint32_t kCountMax = 0xffffffffu;
	volatile uint32_t& lvt_timer = *reinterpret_cast<uint32_t*>(0xfee0320);
	volatile uint32_t& initial_count = *reinterpret_cast<uint32_t*>(0xfee00380);
	volatile uint32_t& current_count = *reinterpret_cast<uint32_t*>(0xfee00390);
	volatile uint32_t& divide_config = *reinterpret_cast<uint32_t*>(0xfee003e0);
}

void InitializeLAPICTimer() {
	divide_config = 0b000;
	lvt_timer = (0b001 << 16) | 32;
	return;
}

void StartLAPICTimer() {
	initial_count = kCountMax;
}

uint32_t LAPICTimer() {
	return kCountMax - current_count;
}

void StopLAPICTimer() {
	initial_count = 0;
}

