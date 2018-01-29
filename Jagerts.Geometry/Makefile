ifeq ($(OS),Windows_NT)
	OS_NAME = Windows
	OS_TARGET = WIN32
    ifeq ($(PROCESSOR_ARCHITEW6432),AMD64)
        PLATFORM_TARGET = AMD64
		PLATFORM_NAME = x64
    else
        ifeq ($(PROCESSOR_ARCHITECTURE),AMD64)
        	PLATFORM_TARGET = AMD64
			PLATFORM_NAME = x64
        endif

        ifeq ($(PROCESSOR_ARCHITECTURE),x86)
        	PLATFORM_TARGET = IA32
			PLATFORM_NAME = x86
        endif
    endif
else
    UNAME_S := $(shell uname -s)
    ifeq ($(UNAME_S),Linux)
		OS_NAME = Linux
		OS_TARGET = LINUX
    endif

    ifeq ($(UNAME_S),Darwin)
		OS_NAME = MacOS
		OS_TARGET = OSX
    endif

	LBITS := $(shell getconf LONG_BIT)
	ifeq ($(LBITS),64)
		PLATFORM_TARGET = AMD64
		PLATFORM_NAME = x64
	else
		PLATFORM_TARGET = IA32
		PLATFORM_NAME = x86
	endif
endif

JAGERTS_TEST_OUT_DIR = Jagerts.Test/bin/$(OS_NAME)/$(PLATFORM_NAME)/

PROJECT_DIR = $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
SOLUTION_DIR = $(PROJECT_DIR)../
OUT_DIR = $(PROJECT_DIR)bin/$(OS_NAME)/$(PLATFORM_NAME)/
INT_DIR = $(PROJECT_DIR)obj/$(OS_NAME)/$(PLATFORM_NAME)/

TARGET_NAME = $(shell basename $(PROJECT_DIR))
TARGET_EXT = dylib
TARGET_FILE = $(TARGET_NAME).$(TARGET_EXT)
TARGET = $(OUT_DIR)$(TARGET_FILE)

INCLUDE_DIRS = $(SOLUTION_DIR) $(PROJECT_DIR) $(SOLUTION_DIR)packages/
INCLUDE_PARAMS = $(foreach d, $(INCLUDE_DIRS), -I$d)
INCLUDE_FILES = $(wildcard $(INCLUDE_DIRS)*.hpp)

SRC_FILES = $(wildcard $(PROJECT_DIR)*.cpp)
OBJ_FILES = $(patsubst $(PROJECT_DIR)%.cpp,$(INT_DIR)%.o,$(SRC_FILES))

LIB_DIRS =
LIB_FILES =

LIB_FLAGS = $(foreach l, $(LIB_DIRS), -L$l) $(LIB_FILES) 

PREPROCESSOR_MACROS := JAGERTS_GEOMETRY_DLL=1
C_PREPROCESSOR_MACROS = $(foreach m, $(PREPROCESSOR_MACROS), -D$m)

CPP_LANGUAGE = c++17;

COMPILIER = g++
COMPILIER_FLAGS = $(INCLUDE_PARAMS) $(C_PREPROCESSOR_MACROS) -D$(OS_TARGET) -D$(PLATFORM_TARGET)

start:
	@echo building project $(TARGET_NAME)

build: start $(TARGET)
	@echo "  success compiling binaries"	

rebuild: start rclean $(TARGET)
	@echo "  success compiling binaries"	

$(INT_DIR):
	@mkdir -p $(INT_DIR)
	
$(INT_DIR)%.o: $(PROJECT_DIR)%.cpp  $(INCLUDE_FILES) | $(INT_DIR)
	@echo "  compiling sources"	
	@$(COMPILIER) -std=$(CPP_LANGUAGE) -c -o $@ $< $(COMPILIER_FLAGS)

compile: $(OBJ_FILES)
	@echo "  compiling binaries"
	@mkdir -p $(OUT_DIR)
	@ar cr $(OUT_DIR)$(TARGET_NAME).a $^ $(LIB_FLAGS)
	@$(COMPILIER) -dynamiclib -undefined suppress -flat_namespace $(OBJ_FILES) -o $(TARGET) $(COMPILIER_FLAGS) $(LIB_FLAGS)

copy:
	@echo "  copying binaries"
	@mkdir -p $(JAGERTS_TEST_OUT_DIR)
	@cp $(OUT_DIR)$(TARGET_NAME).a $(JAGERTS_TEST_OUT_DIR)
	@cp $(TARGET) $(JAGERTS_TEST_OUT_DIR)

$(TARGET): compile copy

.PHONY: clean

rclean:
	@echo "  cleaning object files"	
	@rm -f $(OBJ_FILES)	
	@echo "  cleaning binary files"	
	@rm -f $(TARGET)

clean:
	@echo cleaning project $(TARGET_NAME)
	@echo "  cleaning object files"	
	@rm -f $(OBJ_FILES)	
	@echo "  cleaning binary files"	
	@rm -f $(TARGET)
