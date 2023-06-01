SHELL = bash
MAKEFLAGS += --silent
update: $(shell find . -name [a-z]*.md)

%.md: 
	awk -f etc/just1.awk  README.md > tmp
	awk -f etc/not1.awk $@ >> tmp
	mv tmp $@

pull:
	git pull

push:
	git commit -am saving; git push; git status