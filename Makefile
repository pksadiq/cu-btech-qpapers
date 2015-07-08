BIN = bin
SRC = src
QFILE = qpaper
LOG = log
LATEX = pdflatex



gen:
	$(LATEX) -output-directory $(LOG) $(SRC)/$(SEM)/$(QFILE)_$(SEM)_$(BATCH).tex
	mv $(LOG)/$(QFILE)_$(SEM)_$(BATCH).pdf $(BIN)



clean:
	rm -rf $(LOG)/* $(BIN)/*


s1s2: SEM = s1s2
s1s2: gen
en:
	$(eval BATCH = en)

s3: SEM = s3
s3: gen
ai:
	$(eval BATCH = ai)

s4: SEM = s4
s4: gen
s5: SEM = s5
s5: gen
s6: SEM = s6
s6: gen
l:
	$(eval BATCH = l)

s7: SEM = s7
s7: gen
s8: SEM = s8
s8: gen
