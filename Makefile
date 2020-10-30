

# The book's copyright notice:
#   Copyright  2018 Fawwaz T. Ulaby, Michel M. Maharbiz, Cynthia M. Furse
#   This book is published by Michigan Publishing under an agreement with the
#   authors.  It is made available free of charge in electronic form to any
#   student or instructor interested in the subject matter.
#
# I _think_ this means it is okay to include the original PDF in this
# repository.
SOURCE=CAD101.pdf

INFO=toc.info
OUTPUT=Circuit-Analysis-and-Design_Ulaby-Maharbiz-Furse.pdf


default: $(OUTPUT)


# mark the generated info file as transient
# this may need to change if the file is to include more than the ToC
.INTERMEDIATE: $(INFO)

$(INFO): toc.votl totoc.py
	./totoc.py $< > $@

$(OUTPUT): $(SOURCE) $(INFO)
	pdftk $(SOURCE) update_info $(INFO) output $(OUTPUT)


clean:
	rm -f $(INFO)

clean-all: clean
	rm -f $(SOURCE)
