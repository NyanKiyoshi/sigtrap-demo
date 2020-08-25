MAIN_OUT = main.out

.PHONY:
all: build gdb

build:
	gcc -c -Wall -Werror -fpic dummy.c
	gcc -shared -o libdummy.so dummy.o
	gcc -Wall -o $(MAIN_OUT) main.c -L. -ldummy

py:
	./main.py

gdb:
	gdb python3 -ex 'run main.py'

c:
	$(MAIN_OUT)
