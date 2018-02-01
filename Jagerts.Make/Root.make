_MAKE_INCLUDE_PATH =

DIST_PROJECTS =
BUILD_PROJECTS =

BUILD_DEBUG_CMD = echo ""; $(foreach p, $(BUILD_PROJECTS), make build-debug PROJECT_DIR='$(CURDIR)' _MAKE_INCLUDE_PATH='$(_MAKE_INCLUDE_PATH)' -f $p/Makefile; echo "";)
REBUILD_DEBUG_CMD = echo ""; $(foreach p, $(BUILD_PROJECTS), make rebuild-debug PROJECT_DIR='$(CURDIR)' _MAKE_INCLUDE_PATH='$(_MAKE_INCLUDE_PATH)' -f $p/Makefile; echo "";)
CLEAN_DEBUG_CMD = echo ""; $(foreach p, $(BUILD_PROJECTS), make clean-debug PROJECT_DIR='$(CURDIR)' _MAKE_INCLUDE_PATH='$(_MAKE_INCLUDE_PATH)' -f $p/Makefile; echo "";)

BUILD_RELEASE_CMD = echo ""; $(foreach p, $(BUILD_PROJECTS), make build-release PROJECT_DIR='$(CURDIR)' _MAKE_INCLUDE_PATH='$(_MAKE_INCLUDE_PATH)' -f $p/Makefile; echo "";)
REBUILD_RELEASE_CMD = echo ""; $(foreach p, $(BUILD_PROJECTS), make rebuild-release PROJECT_DIR='$(CURDIR)' _MAKE_INCLUDE_PATH='$(_MAKE_INCLUDE_PATH)' -f $p/Makefile; echo "";)
CLEAN_RELEASE_CMD = echo ""; $(foreach p, $(BUILD_PROJECTS), make clean-release PROJECT_DIR='$(CURDIR)' _MAKE_INCLUDE_PATH='$(_MAKE_INCLUDE_PATH)' -f $p/Makefile; echo "";)

build-debug:
	@$(BUILD_DEBUG_CMD)

rebuild-debug:
	@$(REBUILD_DEBUG_CMD)

clean-debug:
	@$(CLEAN_DEBUG_CMD)

build-release:
	@$(BUILD_RELEASE_CMD)

rebuild-release:
	@$(REBUILD_RELEASE_CMD)

clean-release:
	@$(CLEAN_RELEASE_CMD)

build: build-debug build-release

rebuild: rebuild-debug rebuild-release

clean: clean-debug clean-release