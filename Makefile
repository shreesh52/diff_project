# Makefile for simple C++ project

CXX = g++
CXXFLAGS = -Wall -std=c++11

SRCS = main.cpp functions.cpp
OBJS = $(SRCS:.cpp=.o)
EXEC = myapp

all: $(EXEC)

$(EXEC): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $(EXEC) $(OBJS)

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(EXEC)

