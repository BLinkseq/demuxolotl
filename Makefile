VERSION=1.0

all: demuxolotl

demuxolotl:
	@echo "Compiling demuxolotl"
	mkdir -p bin/
	rm -f bin/demuxolotl
	CGO_ENABLED=0 go build -ldflags="-X cmd/cmd.VERSION=$(VERSION) -s -w" -o bin/demuxolotl
