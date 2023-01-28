#pragma once

#include <array>
#include <limits>

#include "memory_map.hpp"
#include "error.hpp"

namespace {
	constexpr unsigned long long operator""_KiB(unsigned long long Kib) {
		return Kib * 1024;
	}
	constexpr unsigned long long operator""_MiB(unsigned long long Mib) {
		return Mib * 1024_KiB;
	}
	constexpr unsigned long long operator""_GiB(unsigned long long Gib) {
		return Gib * 1024_MiB;
	}
}

inline bool IsAvailable(MemoryType memory_type) {
	return
		memory_type == MemoryType::kEfiBootServicesCode ||
		memory_type == MemoryType::kEfiBootServicesData ||
		memory_type == MemoryType::kEfiConventionalMemory;
}

const int kUEFIPageSize = 4096;
static const auto kBytesPerFrame{4_KiB};

class FrameID {
	public:
		explicit FrameID(size_t id) : id_{id}{}
		size_t ID() const {return id_;}
		void* Frame() const {return reinterpret_cast<void*>(id_ * kBytesPerFrame);}
	private:
		size_t id_;
};

static const FrameID kNullFrame{std::numeric_limits<size_t>::max()};

class BitmapMemoryManager {
	public:
		static const auto kMapPhysicalMemoryBytes{128_GiB};
		static const auto kFrameCount{kMapPhysicalMemoryBytes / kBytesPerFrame};

		using MapLineType = unsigned long;
	
		static const size_t kBitsPerMapLine{8 * sizeof(MapLineType)};

		BitmapMemoryManager();

		WithError<FrameID> Allocate(size_t num_frames);
		Error Free(FrameID start_frame, size_t num_frames);
		void MarkAllocated(FrameID start_frame, size_t num_frames);
		void SetMemoryRange(FrameID range_begin, FrameID range_end);
		bool IsAvailable(uintptr_t ptr);

	private:
		std::array<MapLineType, kFrameCount / kBitsPerMapLine> alloc_map_;
		FrameID range_begin_;
		FrameID range_end_;

		bool GetBit(FrameID frame) const;
		void SetBit(FrameID frame, bool allocated);
};

inline FrameID AddressToFrameID(uintptr_t ptr) {
	return FrameID{ptr/kBytesPerFrame};
}
void InitializeMemoryManager(BitmapMemoryManager *memory_manager, MemoryMap *mmap);
Error InitializeHeap(BitmapMemoryManager& memory_manager);
