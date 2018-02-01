## VARIABLES ##
_MAKE_INCLUDE_PATH =
include $(_MAKE_INCLUDE_PATH)Variables.make

### TARGET VARIABLES ###
TARGET_EXT =

### SOURCE VARIABLES ###
INCLUDE_DIRS += 
SRC_FILES += 
LIB_DIRS += 
LIB_FLAGS +=
LIB_PROJECTS = 

### LANGUAGE VARIABLES ###
COMPILIER = g++
CPP_LANGUAGE = c++1z
PREPROCESSOR_MACROS =

## RULES ##
include $(_MAKE_INCLUDE_PATH)Rules.make

## CLEAN ##
.compile-debug-pre: .clean_dependencies_debug

.compile-debug-post: .copy_dependencies_debug
	
.compile-release-pre: .clean_dependencies_release

.compile-release-post: .copy_dependencies_release

clean-debug: .clean-debug-pre .clean-debug .clean-debug-post

clean-release: .clean-release-pre .clean-release .clean-release-post

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

## DIST ##
.distr-pre:

.distr-post:

distr: .distr-pre .distr-clean rebuild .distr-copy .distr-post