file=README
ext=md html pdf docx docx.pdf html.pdf html.png

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

%.html.pdf: %.html
	wkhtmltopdf $< $@

%.html.png: %.html
	wkhtmltoimage $< $@

.PHONY: default
