CXX = g++
CXXFLAGS = -O3 -std=c++11 -Wall -Wextra

TARGET = blur_cpu
SRC = blur_cpu.cpp

all: $(TARGET)

$(TARGET): $(SRC)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(SRC)

clean:
	rm -f $(TARGET)