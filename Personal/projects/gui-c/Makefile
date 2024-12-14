# Makefile

SOURCE=.
TODO_SRC=$(SOURCE)/todo.c
DESTINATION=$(SOURCE)/build
CFLAGS=-lglfw -lGL -lleif -lclipboard -lxcb -lm
CC=clang


all: $(DESTINATION) $(DESTINATION)/todo
	

$(DESTINATION):
	mkdir $(DESTINATION)

$(DESTINATION)/todo:
	$(CC) -o $(DESTINATION)/todo $(TODO_SRC) $(CFLAGS) 

test:
	echo -e "[\e[32mOK\e[0m ]ALL TEST PASSED.\n"

clean:
	rm $(DESTINATION)/todo

.PHONY: clean test

