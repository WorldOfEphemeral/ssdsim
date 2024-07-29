# ssdsim linux support
all:ssd 
	
clean:
	rm -f ssd *.o *~
.PHONY: clean

ssd:  
	gcc ssd.c avlTree.c flash.c initialize.c pagemap.c -o ssd
ssd.o: flash.h initialize.h pagemap.h
	gcc -c -g ssd.c
flash.o: pagemap.h
	gcc -c -g flash.c
initialize.o: avlTree.h pagemap.h
	gcc -c -g initialize.c
pagemap.o: initialize.h
	gcc -c -g pagemap.c
avlTree.o: 
	gcc -c -g avlTree.c

