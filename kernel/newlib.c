#define C_LANG
#include "frame.hpp"
#include <unistd.h>
#include <sys/stat.h>
#include <sys/types.h>

#include <errno.h>
#undef errno
extern int errno;

caddr_t program_break, program_break_end;

void* sbrk(intptr_t incr) {
	if(program_break == 0 || program_break + incr >= program_break_end) {
		errno = ENOMEM;
		return (caddr_t)-1;
	}
	caddr_t prev_break = program_break;
	program_break += incr;
	return prev_break;
}

/*
ssize_t read(int __fd, void *__buf, size_t __nbytes) {
	Print("function read");
	while(1) __asm__("hlt");
	return 0;
}

ssize_t write(int fd, const void *buf, size_t __n) {
	Print((char*)buf);
	Print("function write");
	while(1) __asm__("hlt");
	return 0;
}
*/

void _exit(int error_code) {
	Print("function _exit");
	while(1) __asm__("hlt");
}

__off_t lseek(int __fd, off_t __offset, int __whence) {
	Print("function lseek");
	while(1) __asm__("hlt");
	return 0;
}

int close(int __fd) {
	Print("function close");
	while(1) __asm__("hlt");
	return 0;
}

void kill(pid_t pid, int sig) {
	Print("function kill");
	errno = EINVAL;
	while(1) __asm__("hlt");
	return;
}

__pid_t getpid() {
	Print("function getpid");
	while(1) __asm__("hlt");
	return 0;
}

int fstat(int __fd, struct stat *__buf) {
	Print("function fstat");
	while(1) __asm__("hlt");
	return 0;
}

int isatty(int __fd) {
	Print("function isatty");
	while(1) __asm__("hlt");
	return 0;
}
