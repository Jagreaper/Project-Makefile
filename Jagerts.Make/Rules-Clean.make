.clean-debug:
	@rm -rf $(PROJECT_DIR)$(OBJ_DIR_DEBUG)
	@rm -rf $(PROJECT_DIR)$(BIN_DIR_DEBUG)

.clean-release:
	@rm -rf $(PROJECT_DIR)$(OBJ_DIR_RELEASE)
	@rm -rf $(PROJECT_DIR)$(BIN_DIR_RELEASE)
