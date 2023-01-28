#pragma once

#define PORT_KEYDAT             0x0060  // モード設定のための装置番号
#define PORT_KEYCMD             0x0064  // モード設定通知のための装置番号
#define PORT_KEYSTA             0x0064  // KBCのコマンド受付可否判断のための装置番号
#define KEYSTA_SEND_NOTREADY    0x02    // 下位2bitが0であるか判断(KBCのコマンド受付可否判定)
#define KEYCMD_WRITE_MODE       0x60    // モード設定のためのコマンド
#define KBC_MODE                0x47    // マウスを利用するモードにするコマンド

void InitializeKeycode();
