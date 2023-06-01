SHELL = bash
MAKEFLAGS += --silent
update: $(shell find . -name [0-9a-z]*.md)
	echo ""

%.md: 
	echo -n "."
	awk -f etc/just1.awk  README.md > tmp
	awk -f etc/not1.awk $@ >> tmp
	mv tmp $@

pull:
	git pull

push:
	git commit -am saving; git push; git status
