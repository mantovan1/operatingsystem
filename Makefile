all:	
	mkdir bin
	nasm -f bin -o ./bin/boot.bin boot.asm
	nasm -f bin -o ./bin/kernel.bin kernel.asm
clean:
	rm -rf bin

