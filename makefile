CXX = g++
CXXFLAGS = -Iinclude
LDFLAGS = -lGL -lGLU -lglfw

SRC_DIR = src
SRC_FILES = $(SRC_DIR)/glad.c main.cpp
OBJ_FILES = $(SRC_FILES:.cpp=.o)

TARGET = main

all: $(TARGET)

$(TARGET): $(OBJ_FILES)
	$(CXX) -o $@ $^ $(LDFLAGS)

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ_FILES) $(TARGET)
