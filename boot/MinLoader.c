#include "MinLoader.h"
#include "elf.h"
#include "font.h"
#include <Uefi.h>
#include <Include/Library/UefiBootServicesTableLib.h>
#include "memory_map.h"

EFI_STATUS GetMemoryMap(struct MemoryMap* map) {
	if(map->buffer == NULL) return EFI_BUFFER_TOO_SMALL;

	map->map_size = map->buffer_size;
	return gBS->GetMemoryMap(
			&map->map_size,
			(EFI_MEMORY_DESCRIPTOR*)map->buffer,
			&map->map_key,
			&map->descriptor_size,
			&map->descriptor_version);
}

EFI_STATUS
EFIAPI
UefiMain(EFI_HANDLE ImageHandle, EFI_SYSTEM_TABLE *SystemTable)
{
	struct bootinfo_t bootinfo;
	EFI_STATUS status;

	//GOPの取得
	EFI_GUID gop_guid = EFI_GRAPHICS_OUTPUT_PROTOCOL_GUID;
	EFI_GRAPHICS_OUTPUT_PROTOCOL *gop = NULL;
	do {
		status = gBS->LocateProtocol(&gop_guid, NULL, (void **)&gop);
	} while(EFI_ERROR(status));

	//自前の構造体へGOPから情報をコピー
	bootinfo.vinfo.fb =      (uint64_t *)gop->Mode->FrameBufferBase;
	bootinfo.vinfo.fb_size = (uint64_t)  gop->Mode->FrameBufferSize;
	bootinfo.vinfo.x_axis =  (uint64_t)  gop->Mode->Info->HorizontalResolution;
	bootinfo.vinfo.y_axis =  (uint64_t)  gop->Mode->Info->VerticalResolution;
	bootinfo.vinfo.ppsl =    (uint32_t)  gop->Mode->Info->PixelsPerScanLine;

	char *p = (char *)bootinfo.vinfo.fb;
	for(int i = 0; i < bootinfo.vinfo.fb_size; i++) {
		*p = 0;
		p++;
	}

	switch(gop->Mode->Info->PixelFormat) {
		case PixelRedGreenBlueReserved8BitPerColor:
			Print(L"[Loader]RGB\n");
			bootinfo.vinfo.format = RGB;
			break;
		case PixelBlueGreenRedReserved8BitPerColor:
			bootinfo.vinfo.format = BGR;
			Print(L"[Loader]BGR\n");
			break;
		default:
			Print(L"[Loader]Unsupported pixel format\n");
			while(1) __asm__("hlt");
	}

	Print(L"[Loader]Got gop\n");

	//ファイルシステムプロトコルの起動
	EFI_GUID sfsp_guid = EFI_SIMPLE_FILE_SYSTEM_PROTOCOL_GUID;
	EFI_SIMPLE_FILE_SYSTEM_PROTOCOL *sfsp = NULL;
	do {
		status = gBS->LocateProtocol(&sfsp_guid, NULL, (void **)&sfsp);
	} while(EFI_ERROR(status));

	Print(L"[Loader]Got sfsp\n");

	//ブロックデバイスのオープン
	EFI_FILE_PROTOCOL *root = NULL;
	do {
		sfsp->OpenVolume(sfsp, &root);
	} while(EFI_ERROR(status));

	Print(L"[Loader]Volume open\n");

	Print(L"[Loader]Font file opening...\n");
	//ASCIIフォントファイルのオープン
	EFI_FILE_PROTOCOL *font_file;
	CHAR16 *font_file_name = (CHAR16 *)FONT_FILE_NAME;
	UINT64 file_mode = (UINT64)EFI_FILE_READ_ONLY;
	do {
		status = root->Open(root, &font_file, font_file_name, file_mode, 0);
	} while(EFI_ERROR(status));


	//ASCIIフォントファイルの情報取得
	EFI_FILE_INFO font_file_info;
	EFI_GUID font_fi_guid = EFI_FILE_INFO_ID;
	UINTN font_buf_size = BUF_256G;
	do {
		status = font_file->GetInfo(font_file, &font_fi_guid, &font_buf_size, &font_file_info);
	} while(EFI_ERROR(status));
	UINTN font_file_size = font_file_info.FileSize;
	
	Print(L"[Loader]Reading font file...\n");
	//ASCIIフォントファイルのread
	uint64_t *font_file_buf = NULL;
	do {
		status = font_file->Read(font_file, &font_file_size, font_file_buf);
	} while(EFI_ERROR(status));

	Print(L"[Loader]Allocating pool for font file...\n");
	uint64_t *font_buf = NULL;
	do {
		gBS->AllocatePool(EfiLoaderData, font_file_size, (void **)&font_buf);
	} while(EFI_ERROR(status));

	Print(L"[Loader]Copy font file...\n");
	gBS->CopyMem((void *)font_buf, font_file_buf, font_file_size);

	bootinfo.ascii_font = (FONT *)font_buf;

	//ブロックデバイスからkernelのオープン
	EFI_FILE_PROTOCOL *kernel_file;
	CHAR16 *file_name = (CHAR16 *)KERNEL_FILE_NAME;
	do {
		status = root->Open(root, &kernel_file, file_name, file_mode, 0);
	} while(EFI_ERROR(status));
	
	Print(L"[Loader]Kernel file opened\n");
	
	//kernelの情報取得
	EFI_FILE_INFO kernel_file_info;
	EFI_GUID kernel_fi_guid = EFI_FILE_INFO_ID;
	UINTN kernel_buf_size = BUF_256G;
	do {
		status = kernel_file->GetInfo(kernel_file, &kernel_fi_guid, &kernel_buf_size,
				&kernel_file_info);
	} while(EFI_ERROR(status));
	UINTN kernel_file_size = kernel_file_info.FileSize;

	Print(L"[Loader]Got kernel info\n");
/*
	uint64_t kernel_base = KERNEL_BASE;
	do {
		status = gBS->AllocatePages(
				AllocateAddress,
				EfiBootServicesData,
				(kernel_file_size + 0xfff) / 0x1000,
				(EFI_PHYSICAL_ADDRESS*)&kernel_base);
	} while(EFI_ERROR(status));
	Print(L"[Loader]kernel_base : %p\n", kernel_base);
	Print(L"[Loader]Allocate pool for temp kernel\n");
*/
	//kernelのread
	uint64_t kernel_temp_buffer;
	do {
		status = gBS->AllocatePool(EfiBootServicesData,
				kernel_file_size, (void **)&kernel_temp_buffer);
	} while(EFI_ERROR(status));
	
	do {
		status = kernel_file->Read(kernel_file, &kernel_file_size, (uint64_t*)kernel_temp_buffer);
	} while(EFI_ERROR(status));

	Print(L"[Loader]Read kernel file\n");
	Print(L"[Loader]kernel_temp_buffer : %p\n", kernel_temp_buffer);

	uint64_t load_segment_memory;
	Elf64_Ehdr *kernel_ehdr = (Elf64_Ehdr*)kernel_temp_buffer;
	Elf64_Phdr *kernel_phdr = (Elf64_Phdr*)(kernel_temp_buffer + kernel_ehdr->e_phoff);
	Elf64_Shdr *kernel_shdr = (Elf64_Shdr*)(kernel_temp_buffer + kernel_ehdr->e_shoff);
	for(int i = 0; i < kernel_ehdr->e_phnum; i++) {
		if(kernel_phdr[i].p_type == PT_LOAD) {
			load_segment_memory = kernel_phdr[i].p_paddr - kernel_phdr[i].p_paddr % 0x1000;
			do {
				status = gBS->AllocatePages(
						AllocateAddress,
						EfiLoaderData,
						(kernel_phdr[i].p_memsz + 0xfff) / 0x1000,
						(EFI_PHYSICAL_ADDRESS*)&load_segment_memory);
				if(EFI_ERROR(status)){
					Print(L"[Loader]Allocate Failed : %p\n", load_segment_memory);
					Print(L"[Loader]error : %p\n", status);
					load_segment_memory += 0x1000;
					if(load_segment_memory > 0x106000) while(1) __asm__("hlt");
				}
			} while(EFI_ERROR(status));
			Print(L"[Loader]Alloc %p, size : %p\n", load_segment_memory, kernel_phdr[i].p_memsz);
			gBS->CopyMem((void*)(kernel_phdr[i].p_paddr),
					(void*)(kernel_temp_buffer + kernel_phdr[i].p_offset),
					kernel_phdr[i].p_filesz);
		}
	}

	//bss初期化
	char *string_table;
	for(int i = 0; i < kernel_ehdr->e_shnum; i++) {
		if(kernel_shdr[i].sh_type == SHT_STRTAB) {
			string_table = (char*)kernel_shdr[i].sh_offset + kernel_temp_buffer;
			break;
		}
	}

	for(int i = 0; i < kernel_ehdr->e_shnum; i++) {
		int index = kernel_shdr[i].sh_name;
		if((string_table[index] == '.') &&
				(string_table[index+1] == 'b') &&
				(string_table[index+2] == 's') &&
				(string_table[index+3] == 's')) {
			char *bss = (char*)kernel_shdr[i].sh_addr;
			for(int j = 0; j < kernel_shdr[i].sh_size; j++) {
				bss[j] = 0;
			}
		}
	}

//	while(1) __asm__("hlt");

	//エントリポイントの取得
	uint64_t *updated_start_addr = (uint64_t*)(kernel_ehdr->e_entry);

	Print(L"[Loader]Kernel copied\n");

	Print(L"[Loader]UEFI Boot Service ending...\n");
	//UEFI Boot serviceの終了とMemoryMapの取得
	UINTN mapkey;
	CHAR8 memmap_buf[4096*4];
	struct MemoryMap memmap;
	
	memmap.buffer_size = 4096*4;
	memmap.buffer = memmap_buf;
	memmap.map_size = memmap.map_key = memmap.descriptor_size = memmap.descriptor_version = 0;
	bootinfo.memory_map = &memmap;
	
	do {
		status = GetMemoryMap(bootinfo.memory_map);
		Print(L"[Loader]Getting memory map...\n");
	} while(EFI_ERROR(status));
	mapkey = memmap.map_key;

	status = gBS->ExitBootServices(ImageHandle, mapkey);
	
	jump_to_kernel(&bootinfo, updated_start_addr);

	return status;
}
