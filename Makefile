all: build

build:
	@echo ""
	@make build -f Jagerts.Geometry/Makefile
	@echo ""
	@make build -f Jagerts.Test/Makefile
	@echo ""

rebuild:
	@echo ""
	@make rebuild -f Jagerts.Geometry/Makefile
	@echo ""
	@make rebuild -f Jagerts.Test/Makefile
	@echo ""

.PHONY: clean

clean:
	@echo ""
	@make clean -f Jagerts.Geometry/Makefile
	@echo ""
	@make clean -f Jagerts.Test/Makefile
	@echo ""