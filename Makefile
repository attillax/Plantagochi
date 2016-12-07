TEMPFILES = \
	*.aux \
	*.lo[g,f,t] \
	*.out \
	*.toc \
	*.syntex.gz\
	*.sta

DIR = ./Docs
MAIN = Main.pdf
IDEA = Idea.pdf
TOOL = Tools.pdf
CHRON = Chronology.pdf

$(DIR)/$(MAIN): $(DIR)/$(REPORT:%.pdf=%.tex)
	(cd $(DIR);\
	pdflatex -interaction=nonstopmode $(MAIN:%.pdf=%.tex);\
	pdflatex -interaction=nonstopmode $(MAIN:%.pdf=%.tex);\
	pdflatex -interaction=nonstopmode $(MAIN:%.pdf=%.tex);\
	pdflatex -interaction=nonstopmode $(MAIN:%.pdf=%.tex);\
	rm -f $(TEMPFILES))

clean:
	(cd $(DIR);\
	rm -f $(MAIN))

idea:
	(cd $(DIR);\
	pdflatex -interaction=nonstopmode $(IDEA:%.pdf=%.tex);\
	pdflatex -interaction=nonstopmode $(IDEA:%.pdf=%.tex);\
	rm -f $(TEMPFILES))

tools:
	(cd $(DIR);\
	pdflatex -interaction=nonstopmode $(TOOL:%.pdf=%.tex);\
	pdflatex -interaction=nonstopmode $(TOOL:%.pdf=%.tex);\
	rm -f $(TEMPFILES))

chronology:
	(cd $(DIR);\
	pdflatex -interaction=nonstopmode $(CHRON:%.pdf=%.tex);\
	pdflatex -interaction=nonstopmode $(CHRON:%.pdf=%.tex);\
	rm -f $(TEMPFILES))

.PHONY: clean, idea, tools, chronology
