file=README
ext=md html pdf docx docx.pdf

render=Rscript -e 'rmarkdown::render("$<", output_format="$(outf)")'



default: $(addprefix $(file).,$(ext))

%.md: outf=github_document
%.html: outf=html_document
%.pdf: outf=pdf_document
%.docx: outf=word_document

%.pdf: %.Rmd
	$(render)

%.md: %.Rmd
	$(render)

%.html: %.Rmd
	$(render)

%.docx: %.Rmd
	$(render)

%.docx.pdf: %.docx
	libreoffice --convert-to pdf $< --headless

.PHONY: default
