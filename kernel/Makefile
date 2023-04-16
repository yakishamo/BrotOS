TARGET = kernel.elf
CFLAGS += -g -O0 \
					-Wall -Wextra -Wno-unused-parameter \
					-I$(HOME)/x86_64-elf/include -I../lib/include/c -I.\
					-fPIE \
					-fno-builtin -fno-common -fno-stack-protector \
					-nostdlibinc \
					-mno-red-zone

CPPFLAGS += -g -O0 \
						-Wall -Wextra -Wno-unused-parameter \
						-I$(HOME)/x86_64-elf/include \
						-I$(HOME)/x86_64-elf/include/c++/v1/ \
						-fPIE \
						-fno-builtin -fno-common -fno-stack-protector \
						-nostdlib \
						-ffreestanding \
						-mno-red-zone \
						-std=c++17

LDFLAGS = -Map kernel.map -e entry_point -z norelro --image-base 0x100000 \
						-static	-L$(HOME)/x86_64-elf/lib/ -lc -lc++

OBJS = kernel.o frame.o asmfunc.o pci.o memory_map.o newlib.o \
			 segment.o interrupt.o paging.o keyboard.o input.o command.o memory_manager.o \
			 timer.o back_buffer.o

.PHONY: clean

$(TARGET): $(OBJS)
	ld.lld $(LDFLAGS) -o $@ $+
	echo "Make end"

%.o: %.cpp
	clang++ $(CPPFLAGS) -c -o $@ $< -g

%.o: %.c
	clang $(CFLAGS) -c -o $@ $< -g

%.o: %.asm
	nasm -f elf64 -o $@ $<

clean:
	rm -f *.o *.elf *.map
