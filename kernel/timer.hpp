#pragma once
#include <stdint.h>

void InitializeLAPICTimer();
void StartLAPICTimer();
uint32_t LAPICTimer();
void StopLAPICTimer();

