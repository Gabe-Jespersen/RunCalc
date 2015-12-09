CC = g++
CFLAGS = -g -std=c++11 -Wall
INSTALLPATH = /usr/bin/
EXECUTABLE = runcalc

all: runcalc

runcalc: main.o
	$(CC) $(CFLAGS) main.o -o $(EXECUTABLE)

main.o: main.cpp
	$(CC) $(CFLAGS) -c main.cpp


install:
	cp ./$(EXECUTABLE) $(INSTALLPATH)

uninstall:
	rm $(INSTALLPATH) $(EXECUTABLE)

clean:
	rm -rf *.o $(EXECUTABLE)
