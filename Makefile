all:
	python -m nuitka --standalone --onefile bundle.py && rm -rf bundle.build bundle.dist bundle.onefile-build
install:
	mkdir prefix/bin
	install bundle.py -m 755 -T prefix/bin/bundlr
