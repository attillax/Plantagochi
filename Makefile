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
ANLG = Analogs.pdf
EXPD = Expediency.pdf
FIEL = Fields.pdf
ORDR = Order.pdf
TECH = Technologies.pdf
TOOL = Tools.pdf
COMM = Commerce.pdf
GLOS = Glossary.pdf
INDX = Index.pdf


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

analogs:
	(cd $(DIR);\
	pdflatex -interaction=nonstopmode $(ANLG:%.pdf=%.tex);\
	pdflatex -interaction=nonstopmode $(ANLG:%.pdf=%.tex);\
	rm -f $(TEMPFILES))

expediency:
	(cd $(DIR);\
	pdflatex -interaction=nonstopmode $(EXPD:%.pdf=%.tex);\
	pdflatex -interaction=nonstopmode $(EXPD:%.pdf=%.tex);\
	rm -f $(TEMPFILES))

fields:
	(cd $(DIR);\
	pdflatex -interaction=nonstopmode $(FIEL:%.pdf=%.tex);\
	pdflatex -interaction=nonstopmode $(FIEL:%.pdf=%.tex);\
	rm -f $(TEMPFILES))

order:
	(cd $(DIR);\
	pdflatex -interaction=nonstopmode $(ORDR:%.pdf=%.tex);\
	pdflatex -interaction=nonstopmode $(ORDR:%.pdf=%.tex);\
	rm -f $(TEMPFILES))

technologies:
	(cd $(DIR);\
	pdflatex -interaction=nonstopmode $(TECH:%.pdf=%.tex);\
	pdflatex -interaction=nonstopmode $(TECH:%.pdf=%.tex);\
	rm -f $(TEMPFILES))

tools:
	(cd $(DIR);\
	pdflatex -interaction=nonstopmode $(TOOL:%.pdf=%.tex);\
	pdflatex -interaction=nonstopmode $(TOOL:%.pdf=%.tex);\
	rm -f $(TEMPFILES))

commerce:
	(cd $(DIR);\
	pdflatex -interaction=nonstopmode $(COMM:%.pdf=%.tex);\
	pdflatex -interaction=nonstopmode $(COMM:%.pdf=%.tex);\
	rm -f $(TEMPFILES))

glossary:
	(cd $(DIR);\
	pdflatex -interaction=nonstopmode $(GLOS:%.pdf=%.tex);\
	pdflatex -interaction=nonstopmode $(GLOS:%.pdf=%.tex);\
	rm -f $(TEMPFILES))

index:
	(cd $(DIR);\
	pdflatex -interaction=nonstopmode $(INDX:%.pdf=%.tex);\
	pdflatex -interaction=nonstopmode $(INDX:%.pdf=%.tex);\
	rm -f $(TEMPFILES))

.PHONY: clean, idea, analogs, expediency, fields, order, technologies, tools, commerce, glossary, index
