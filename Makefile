.PHONY: clea
.SUFFIXES: .md .html .tex

HTML_TEMPLATE=template/html5.html

.md.html:
	@TITLE=`perl -e "print substr(ucfirst('$<'),0,-3)"`; \
	pandoc $< -t html5 --template $(HTML_TEMPLATE) -V lang=en \
		-c template/bootstrap.min.css \
		-V title=$$TITLE -V pagetitle=$$TITLE -V author-meta="Jakob Voss" \
		--include-before-body=groups.html \
		| perl -pe 's{href="">([^<]+)<}{"href=\"".lc($$1).".html\">$$1<"}ge' \
		> $@
	@echo $@

html: groups.html $(shell ls *.md | sed s/\.md/.html/)

tex: groups.yaml *.md patterngraph.tex
	@perl bin/groups2tex.pl

normalize: *.md
	@perl bin/normalize.pl *.md

clean:
	@rm -f *.html *.tex patterngraph.* links.csv groups.markdown

groups.markdown: groups.yaml
	@perl bin/groups2md.pl > $@
	@echo $@

groups.html: groups.markdown
	@pandoc $< -t html \
		| sed 's/<ul/<ul class="nav nav-list"/'	> $@
	@echo $@

new: clean html links tex

links: links.csv

links.csv: *.md
	@perl bin/extractlinks.pl > $@
	@echo $@

patterngraph: patterngraph.png patterngraph.dot patterngraph.svg

patterngraph.png: links.csv
	@perl bin/patterngraph.pl $@
	@echo $@

patterngraph.svg: links.csv
	@perl bin/patterngraph.pl $@
	@echo $@

patterngraph.dot: links.csv
	@perl bin/patterngraph.pl $@
	@echo $@

patterngraph.tex: patterngraph.dot
	@dot2tex --figonly $< | perl -pe 's/node {([^}]+)}/node {\\pattern{$$1}}/' > $@
	@echo "$@ needs manual adjustement of scale."

