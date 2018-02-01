## VARIABLES ##
_MAKE_INCLUDE_PATH = ../Jagerts.Make/
include $(_MAKE_INCLUDE_PATH)Variables-Platform.make
include $(_MAKE_INCLUDE_PATH)Variables-Global.make

### TARGET VARIABLES ###
TARGET_EXT = $(EXT_APP)

include $(_MAKE_INCLUDE_PATH)Variables-Target.make

### SOURCE VARIABLES ###
INCLUDE_DIRS += 
SRC_FILES += 
LIB_DIRS += 
LIB_FLAGS +=
LIB_PROJECTS = Jagerts.Geometry

### LANGUAGE VARIABLES ###
COMPILIER = g++
CPP_LANGUAGE = c++1z
PREPROCESSOR_MACROS =

## RULES ##
include $(_MAKE_INCLUDE_PATH)Variables-Compiler.make
include $(_MAKE_INCLUDE_PATH)Rules-Compiler.make
include $(_MAKE_INCLUDE_PATH)Rules-Clean.make

## CLEAN ##
.clean-debug-pre:

.clean-debug-post:

.clean-release-pre:

.clean-release-post:

clean-debug: .clean-debug-pre .clean-debug .clean-debug-post

clean_release: .clean-release-pre .clean-release .clean-release-post

clean: clean-debug clean-release

## BUILD ##
.compile-debug-pre:

.compile-debug-post:

.compile-release-pre:

.compile-release-post:

build-debug: .compile-debug-pre .compile-debug .compile-debug-post

build-release: .compile-release-pre .compile-release .compile-release-post

build: build_debug build_release

## REBUILD ##
rebuild-debug: clean-debug build-debug

rebuild-release: clean-release build-release

rebuild: rebuild-debug rebuild-release