all:clean built

built: main.c fact.o
	gcc -m32 main.c fact.o

fact.o: fact.s
	nasm -g -f elf -o fact.o fact.s

clean:
	rm -f a.out
	rm -f fact.o
