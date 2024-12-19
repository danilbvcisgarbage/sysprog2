CXX = g++
CXXFLAGS = -Iinclude -Wall -Wextra -pedantic
SRC = src/main.cpp src/calculator.cpp
OBJ = $(SRC:.cpp=.o)
TARGET = calculator
LIB = libcalculator.a

all: $(LIB) $(TARGET)

$(LIB): src/calculator.o
	ar rcs $@ $^

$(TARGET): $(OBJ)
	$(CXX) $(CXXFLAGS) -o $@ $^

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) $(TARGET) $(LIB)
