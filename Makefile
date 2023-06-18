SHELL = bash
MAKEFLAGS += --silent
#update: $(shell find . -name [0-9a-z]*.md)

%.: 
	echo -n "."
	awk -f etc/just1.awk  README.md > tmp
	awk -f etc/not1.awk $@ >> tmp
	mv tmp $@

%.html: %.md
	echo "<html><head><link rel=stylesheet href=style.css></head><body>" > $@
	echo "<div class='right'>" >>$@
	cat $< | gawk '\
	{gsub(/<a .*a>/," ")} \
    /^## /{$$1=""; print "<p><b><u>"$$0"</b></u><br>"} \
    /^### /{$$1=""; print "<p>"$$0"<br>"} \
    /^#### /{$$1=""; print " ◾️ "$$0"<br>"} ' >> $@
	echo "</div><div class='left'>" >> $@
	markdown_py -x footnotes  -x tables  -x codehilite -x fenced_code $< >> $@
	echo "</div></body></html>" >> $@

pull:
	git pull

push:
	git commit -am saving; git push; git status
