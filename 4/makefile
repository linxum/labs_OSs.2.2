all: main

main: main.o
	g++ main.o -o main

main.o: main.cpp
	g++ -c main.cpp
	
clean:
	rm -rf *.o main
	
install: main
	mkdir -p "~/bin"
	cp -a "./main" "~/bin"
