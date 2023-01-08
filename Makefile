bootstrap:
	touch main.go
	echo "package main\n\nfunc main() {}" > main.go

	go mod init
	go mod tidy

	touch .gitignore
	echo "bin\nbin/telnet" > .gitignore
	
build:
	go build -o bin/telnet

run: build
	bin/telnet