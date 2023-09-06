WARNINGS := -Werror -Wall -Wextra -pedantic
CXXFLAGS += $(WARNINGS) -g -fdiagnostics-color=always -std=c++20
CXX=g++ $(CXXFLAGS) $(WARNINGS)

all : clean
	mkdir bin
	$(CXX) main.cpp -o bin/main

clean :
	rm -rf bin

.PHONY : all clean
