create:
	cd build && crystal build --progress ../src/hanabi.cr

run:
	./build/hanabi

test:
	crystal spec
