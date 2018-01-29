CONFIGURATION = Debug

DIST_PROJECTS = Jagerts.Geometry
DIST_CMD = rm -rf $(SOLUTION_DIR)dist/; $(foreach d, $(DIST_PROJECTS), mkdir -p $(SOLUTION_DIR)dist/$d/; cp -a $(SOLUTION_DIR)$d/. $(SOLUTION_DIR)dist/$d/; rm -f $(SOLUTION_DIR)dist/$d/Makefile; rm -rf $(SOLUTION_DIR)dist/$d/obj/; )

all: build

build:
	@echo ""
	@make build CONFIGURATION='$(CONFIGURATION)' -f Jagerts.Geometry/Makefile
	@echo ""
	@make build CONFIGURATION='$(CONFIGURATION)' -f Jagerts.Test/Makefile
	@echo ""

rebuild:
	@echo ""
	@make rebuild CONFIGURATION='$(CONFIGURATION)' -f Jagerts.Geometry/Makefile
	@echo ""
	@make rebuild CONFIGURATION='$(CONFIGURATION)' -f Jagerts.Test/Makefile
	@echo ""

clean:
	@echo ""
	@make clean CONFIGURATION='$(CONFIGURATION)' -f Jagerts.Geometry/Makefile
	@echo ""
	@make clean CONFIGURATION='$(CONFIGURATION)' -f Jagerts.Test/Makefile
	@echo ""

build-debug:
	@echo ""
	@make build CONFIGURATION='Debug' -f Jagerts.Geometry/Makefile
	@echo ""
	@make build CONFIGURATION='Debug' -f Jagerts.Test/Makefile
	@echo ""

rebuild-debug:
	@echo ""
	@make rebuild CONFIGURATION='Debug' -f Jagerts.Geometry/Makefile
	@echo ""
	@make rebuild CONFIGURATION='Debug' -f Jagerts.Test/Makefile
	@echo ""

clean-debug:
	@echo ""
	@make clean CONFIGURATION='Debug' -f Jagerts.Geometry/Makefile
	@echo ""
	@make clean CONFIGURATION='Debug' -f Jagerts.Test/Makefile
	@echo ""

build-release:
	@echo ""
	@make build CONFIGURATION='Release' -f Jagerts.Geometry/Makefile
	@echo ""
	@make build CONFIGURATION='Release' -f Jagerts.Test/Makefile
	@echo ""

rebuild-release:
	@echo ""
	@make rebuild CONFIGURATION='Release' -f Jagerts.Geometry/Makefile
	@echo ""
	@make rebuild CONFIGURATION='Release' -f Jagerts.Test/Makefile
	@echo ""

clean-release:
	@echo ""
	@make clean CONFIGURATION='Release' -f Jagerts.Geometry/Makefile
	@echo ""
	@make clean CONFIGURATION='Release' -f Jagerts.Test/Makefile
	@echo ""

build-all: build-debug build-release

rebuild-all: rebuild-debug rebuild-release

clean-all: clean-debug clean-release

dist: rebuild-all
	@$(DIST_CMD)

.PHONY: clean