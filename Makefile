SHELL = /usr/bin/env bash -xeuo pipefail

clean:
	find layers -type d -name python | xargs rm -rf
	find layers -type f -name requirements.txt | xargs rm -f

build: 
	./build.sh --name base --arch amd64

.PHONY: \
	clean \
	build 

