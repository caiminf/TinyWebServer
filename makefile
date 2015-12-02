all: Tiny ./cgi-bin/adder

Tiny: csapp.h csapp.c tiny.c
	gcc csapp.c tiny.c -o Tiny

./cgi-bin/adder: csapp.h csapp.c ./cgi-bin/adder.c
	gcc csapp.c ./cgi-bin/adder.c -o ./cgi-bin/adder

clean:
	rm Tiny ./cgi-bin/adder
