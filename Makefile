CONFIGURATION = Debug

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

.PHONY: clean

clean:
	@echo ""
	@make clean CONFIGURATION='$(CONFIGURATION)' -f Jagerts.Geometry/Makefile
	@echo ""
	@make clean CONFIGURATION='$(CONFIGURATION)' -f Jagerts.Test/Makefile
	@echo ""