all: name
CC = gcc
#INSTDIR = /usr/local/bin
INCLUDE = .
CFLAGS = 

name: main.o
	$(CC) -o name main.o

main.o: main.c
	$(CC) -I$(INCLUDE) $(CFLAGS) -c main.c

clean:
	rm main.o name
