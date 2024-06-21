CXX = g++
CXXFLAGS = -Iinclude
LDFLAGS = -lGL -lGLU -lglfw

SRC_DIR = src
SRC_FILES = $(wildcard $(SRC_DIR)/*.cpp) $(wildcard $(SRC_DIR)/*.c)
OBJ_FILES = $(patsubst $(SRC_DIR)/%.cpp, $(SRC_DIR)/%.o, $(filter %.cpp, $(SRC_FILES))) $(patsubst $(SRC_DIR)/%.c, $(SRC_DIR)/%.o, $(filter %.c, $(SRC_FILES)))

TARGET = output

all: $(TARGET)

$(TARGET): $(OBJ_FILES)
	$(CXX) -o $@ $^ $(LDFLAGS)

$(SRC_DIR)/%.o: $(SRC_DIR)/%.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

$(SRC_DIR)/%.o: $(SRC_DIR)/%.c
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ_FILES) $(TARGET)
