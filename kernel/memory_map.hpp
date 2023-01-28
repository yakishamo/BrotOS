#pragma once

#include <stdint.h>

#define DESC(a) ((MemoryDescriptor*)((uint64_t)mmap->buffer+(a)*mmap->descriptor_size))

#ifndef MEMORY_MAP_STRUCT
#define MEMORY_MAP_STRUCT

typedef struct MemoryDescriptor {
	uint32_t type;
	uintptr_t physical_start;
	uintptr_t virtual_start;
	uint64_t number_of_pages;
	uint64_t attribute;
} MemoryDescriptor;

typedef struct MemoryMap {
	unsigned long long buffer_size;
	void* buffer;
	unsigned long long map_size;
	unsigned long long map_key;
	unsigned long long descriptor_size;
	uint32_t descriptor_version;
} MemoryMap;

#ifdef __cplusplus
enum class MemoryType {
	kEfiReservedMemoryType,
	kEfiLoderCode,
	kEfiLoderData,
	kEfiBootServicesCode,
	kEfiBootServicesData,
	kEfiRuntimeServiceCode,
	kEfiRuntimeServiceData,
	kEfiConventionalMemory,
	kEfiUnusableMemory,
	kEfiACPIReclaimMemory,
	kEfiACPIMemoryNVS,
	kEfiMemoryMappedIO,
	kEfiMemoryMappedIOPortSpace,
	kEfiPalCode,
	kEfiPersistentMemory,
	kEfiMaxMemoryType
};

inline bool operator==(uint32_t lhs, MemoryType rhs) {
	return lhs == static_cast<uint32_t>(rhs);
}

inline bool operator==(MemoryType lhs, uint32_t rhs) {
	return rhs == lhs;
}

#endif
#endif

void show_memdesc(int i);
void show_memory_map();
uint32_t search_mem_type(uintptr_t ptr);
