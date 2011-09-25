all: name
CC = gcc
#INSTDIR = /usr/local/bin
INCLUDE = .
CFLAGS = 

name: main.o
	$(CC) -o name main.o

main.o: main.c
	$(CC) -I$(INCLUDE) $(CFLAGS) -c main.c

tidy :
	$(VERBOSE)find . | egrep "#" | xargs rm -f
	$(VERBOSE)find . | egrep "\~" | xargs rm -f

clean:  tidy
	rm main.o name
