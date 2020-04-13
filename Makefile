pdf:
	pandoc --latex-engine=xelatex --template=template/template.tex \
	report.md -o report.pdf
