TARGET_NAME = $(shell basename $(PROJECT_DIR))
TARGET_FILE = $(TARGET_NAME).$(TARGET_EXT)
_TARGET_DEBUG = $(OUT_DIR_DEBUG)$(TARGET_FILE)
_TARGET_RELEASE = $(OUT_DIR_RELEASE)$(TARGET_FILE)

SHARED_LIB = -shared -fPIC -install_name '$(TARGET_FILE)'