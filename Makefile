file=README
ext=md html pdf docx

render=Rscript -e 'rmarkdown::render("$<", output_format="$(outf)")'

default: $(addprefix $(file).,$(ext))

%.md: outf=github_document
%.html: outf=html_document
%.pdf: outf=pdf_document
%.docx: outf=word_document

%.pdf %.html %.md %.docx: %.Rmd
	$(render)

.PHONY: default
