%.o: %.s
	as --32 $^ -o $@

hello_world_syscall: hello_world_syscall.o
	ld -m elf_i386 $^ -o $@.bin

clean:
	rm -vf *.o
	rm -vf *.bin

.PHONY: clean
