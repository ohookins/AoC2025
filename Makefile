.PHONY: build clean

build:
	@echo "Building the project..."
	gprbuild

clean:
	gprclean