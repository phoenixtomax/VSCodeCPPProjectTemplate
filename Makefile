CXX		  := g++
CXX_FLAGS := -Wall -Wextra -std=c++17 -ggdb


BIN		:= bin
SRC		:= src
INCLUDE	:= /usr/include/eigen3
LIB		:= lib
UT      := unittest

LIBRARIES	:=
EXECUTABLE	:= main
UNITTEST    := ut


all: $(BIN)/$(EXECUTABLE) $(BIN)/$(UNITTEST)

run: clean all
	clear
	./$(BIN)/$(EXECUTABLE)

$(BIN)/$(EXECUTABLE): $(SRC)/*.cpp
	$(CXX) $(CXX_FLAGS) -I$(INCLUDE) -L$(LIB) $^ -o $@ $(LIBRARIES)

$(BIN)/$(UNITTEST): $(UT)/*.cpp
	$(CXX) $(CXX_FLAGS) -I$(INCLUDE) -L$(LIB) $^ -o $@ $(LIBRARIES)

clean:
	-rm $(BIN)/*
