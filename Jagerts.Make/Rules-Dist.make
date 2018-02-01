DIST_CLEAN_CMD = rm -rf $(SOLUTION_DIR)dist/;
DIST_MK_CMD = $(foreach p, $(DIST_PROJECTS), $(foreach d, $(DIST_BINS), mkdir -p $(SOLUTION_DIR)dist/$p/$d;))
DIST_COPY_HEADERS_CMD = $(foreach p, $(DIST_PROJECTS), $(foreach h, $(wildcard $(SOLUTION_DIR)$p/*.hpp), cp $h $(SOLUTION_DIR)dist/$p/;))	
DIST_COPY_BINS_CMD = $(foreach p, $(DIST_PROJECTS), $(foreach d, $(DIST_BINS), $(foreach f, $(wildcard $(SOLUTION_DIR)$p/$d$p*.*), cp $f $(SOLUTION_DIR)dist/$p/$d;)))	
DIST_CMD = $(DIST_CLEAN_CMD) $(DIST_MK_CMD) $(DIST_COPY_HEADERS_CMD) $(DIST_COPY_BINS_CMD)

.dist-debug:
	@rm -rf $(SOLUTION_DIR)dist/