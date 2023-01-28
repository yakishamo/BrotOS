run:
	cp ~/edk2/Build/MinLoaderPkgX64/RELEASE_GCC5/X64/MinLoader.efi .
	sudo mount -o loop disk.img mnt
	sudo cp MinLoader.efi mnt/EFI/BOOT/BOOTX64.EFI
	sudo cp kernel/kernel.elf mnt/
	sudo cp font.bin mnt/
	sudo umount mnt
	qemu-system-x86_64 \
		-m 1G \
		-drive if=pflash,format=raw,readonly=on,file=tool/OVMF_CODE.fd \
		-drive if=pflash,format=raw,file=tool/OVMF_VARS.fd \
		-drive if=ide,index=0,media=disk,format=raw,file=./disk.img \
		-device nec-usb-xhci,id=xhci \
		-monitor stdio \
		-gdb tcp::1234

debug:
	cp ~/edk2/Build/MinLoaderPkgX64/RELEASE_GCC5/X64/MinLoader.efi .
	sudo mount -o loop disk.img mnt
	sudo cp MinLoader.efi mnt/EFI/BOOT/BOOTX64.EFI
	sudo cp kernel/kernel.elf mnt/
	sudo cp font.bin mnt/
	sudo umount mnt
	ulimit -c unlimited
	./qemu/build/x86_64-softmmu/qemu-system-x86_64 \
		-m 1G \
		-drive if=pflash,format=raw,readonly=on,file=tool/OVMF_CODE.fd \
		-drive if=pflash,format=raw,file=tool/OVMF_VARS.fd \
		-drive if=ide,index=0,media=disk,format=raw,file=./disk.img \
		-device nec-usb-xhci,id=xhci \
		-device usb-mouse -device usb-kbd \
		-monitor stdio \
		-S -gdb tcp::1234

#	./qemu/build/x86_64-softmmu/qemu-system-x86_64
