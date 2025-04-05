SHELL = bash
MAKEFLAGS += --silent
#update: $(shell find . -name [0-9a-z]*.md)

%.: 
	echo -n "."
	awk -f etc/just1.awk  README.md > tmp
	awk -f etc/not1.awk $@ >> tmp
	mv tmp $@

%.html: %.md
	echo "$$HEAD" > $@
	markdown_py -x footnotes  -x tables  -x codehilite -x fenced_code $< >> $@
	echo "</main><section class=\"left-sidebar\">" >> $@
	cat $< | gawk '\
	{gsub(/<a .*a>/," ")} \
    /^## /{$$1=""; print "<p><b><u>"$$0"</b></u><br>"} \
    /^### /{$$1=""; print "<p>"$$0"<br>"} \
    /^#### /{$$1=""; print " ◾️ "$$0"<br>"} ' >> $@
	echo "</section><footer class=\"footer\">Footer" >> $@
	echo "</footer></div></body></html>" >> $@

pull:
	git pull

push:
	git commit -am saving; git push; git status


define HEAD
<html>
<head>
<link rel=stylesheet href="style2.css"></head><body>
</head>
<body>
<div class="left-sidebar-grid">
    <header class="header">
    &copy; Tim Menzies 2023, (timm@ieee.org)</header> 
    <main class="main-content">
endef
export HEAD
