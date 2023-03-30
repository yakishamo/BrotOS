#ifndef MIN_LOADER_H
#define MIN_LOADER_H

#include <stdint.h>
#include <Uefi.h>
#include <Library/UefiLib.h>
#include <Library/UefiBootServicesTableLib.h>
#include <Protocol/GraphicsOutput.h>
#include <Protocol/SimpleFileSystem.h>
#include <Guid/FileInfo.h>

#include "boot_types.h"

extern void jump_to_kernel(bootinfo_t *binfo, uint64_t *kernel_addr);

#define KERNEL_FILE_NAME L"kernel.elf"
#define FONT_FILE_NAME L"font.bin"
#define BUF_256G (UINTN)256
#define KERNEL_BASE 0x100000

#endif

