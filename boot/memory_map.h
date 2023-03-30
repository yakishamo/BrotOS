#pragma once

#include <stdint.h>

#ifndef MEMORY_MAP_STRUCT
#define MEMORY_MAP_STRUCT

typedef struct MemoryMap {
	unsigned long long buffer_size;
	void* buffer;
	unsigned long long map_size;
	unsigned long long map_key;
	unsigned long long descriptor_size;
	uint32_t descriptor_version;
} MemoryMap;

typedef struct MemoryDescriptor {
	uint32_t type;
	uintptr_t physical_start;
	uintptr_t virtual_start;
	uint64_t number_of_pages;
	uint64_t attribute;
} MemoryDescriptor;

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
