CC=g++

all: calc calc_lib.a
calc: calculator.o advanced_calculator.o main.o
	$(CC) calculator.o advanced_calculator.o main.o -o $@
calc_lib.a: advanced_calculator.o
	ar -rcs calc_lib.a advanced_calculator.o
calculator.o: calculator.cpp calculator.h
	$(CC) -c calculator.cpp
advanced_calculator.o: advanced_calculator.cpp calculator.h
	$(CC) -c advanced_calculator.cpp
main.o: main.cpp calculator.h
	$(CC) -c main.cpp
clean:
	rm -rf *.o calc calc_lib.a
