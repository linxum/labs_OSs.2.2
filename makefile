all: lab4

lab4: main.o dectooct.o counter.o
	g++ main.o dectooct.o counter.o -o lab4

main.o: main.cpp
	g++ -c main.cpp

dectooct.o: dectooct.cpp
	g++ -c dectooct.cpp

counter.o: counter.cpp
	g++ -c counter.cpp
	
clean:
	rm -rf *.o lab4
	
install: lab4
	mkdir -p "/home/smhnv/bin"
	cp -a "./lab4" "/home/smhnv/bin"
