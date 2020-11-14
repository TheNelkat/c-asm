all:clean built

built: main.c fact.o
	@gcc -m32 main.c fact.o

fact.o: fact.asm
	@nasm -g -f elf -o fact.o fact.asm

clean:
	@rm -f fact
	@rm -f fact.o
