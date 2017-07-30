## Without make
```bash

gcc -I . -c module.c
gcc -I . -c main.c
gcc main.o module.o -o target_bin

```

## With make

- Normal makefile->

```make

all: main.o module.o
    gcc main.o module.o -o target_bin
main.o: main.c module.h
    gcc -I . -c main.c
module.o: module.c module.h
    gcc -I . -c module.c
clean:
    rm -rf *.o
    rm target_bin
    
```

Useful Ref: http://opensourceforu.com/2012/06/gnu-make-in-detail-for-beginners/
