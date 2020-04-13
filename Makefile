pdf:
	pandoc --latex-engine=xelatex --template=template/template.tex \
	--listings -B preamble/summary.md meta/metadata.yaml \
	caps/*.md appends/*.md -s -o My_Report.pdf
