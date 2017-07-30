all: main.o module.o
	gcc main.o module.o -o target_bin
main.o: main.c 
	gcc -I . -c main.c
module.o: module.c 
	gcc -I . -c module.c
clean:
	rm -rf *.o
	rm target_bin
