#include "segment.hpp"
#include "asmfunc.hpp"
#include "frame.hpp"

SegmentDescriptor gdt[3] = {{1},{1},{1}};

void SetCodeSegment(SegmentDescriptor *desc,
		                DescriptorType type,
										unsigned int descriptor_privilege_level,
										uint32_t base,
										uint32_t limit) {
	desc->data = 0;
	desc->bits.base_low = base & 0xffffu;
	desc->bits.base_middle = (base >> 16) & 0xffu;
	desc->bits.base_high = (base >> 24) & 0xffu;
	desc->bits.limit_low = limit & 0xffffu;
	desc->bits.limit_high = (limit >> 16) & 0xfu;
	desc->bits.type = type;
	desc->bits.system_segment = 1;
	desc->bits.descriptor_privilege_level = descriptor_privilege_level;
	desc->bits.present = 1;
	desc->bits.available = 0;
	desc->bits.long_mode = 1;
	desc->bits.default_operation_size = 0;
	desc->bits.granularity = 1;
}

void SetDataSegment(SegmentDescriptor *desc,
		                DescriptorType type,
										unsigned int descriptor_privilege_level,
										uint32_t base,
										uint32_t limit) {
	SetCodeSegment(desc, type, descriptor_privilege_level, base, limit);
	desc->bits.long_mode = 1;
	desc->bits.default_operation_size = 1;
	return;
}

uintptr_t SetupSegments() {
	gdt[0].data = 0;
	SetCodeSegment(gdt+1, DescriptorType::kExecuteRead, 0, 0, 0xfffff);
	SetDataSegment(gdt+2, DescriptorType::kReadWrite, 0, 0, 0xfffff);
	LoadGDT(sizeof(gdt)-1, (uintptr_t)gdt);
	return (uintptr_t)gdt;
}

void InitializeSegment(uint16_t cs, uint16_t ss) {
	SetupSegments();
	SetDSAll(0);
	SetCSSS(cs, ss);
	return;
}
