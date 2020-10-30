
# The book's copyright notice:
#   Copyright  2018 Fawwaz T. Ulaby, Michel M. Maharbiz, Cynthia M. Furse
#   This book is published by Michigan Publishing under an agreement with the
#   authors.  It is made available free of charge in electronic form to any
#   student or instructor interested in the subject matter.
#
# I _think_ this means it is okay to include the original PDF in this
# repository.

# modify these as appropriate
SOURCE=CAD101.pdf
TOC=toc.votl
OUTPUT=Circuit-Analysis-and-Design_Ulaby-Maharbiz-Furse.pdf



default: $(OUTPUT)


$(OUTPUT): $(SOURCE) $(TOC)
	./pdf_bookmark.py --collapse-level 1 --format none \
	    --pdf $(SOURCE) \
	    --bookmark $(TOC) \
	    --output-pdf $(OUTPUT)

clean:
	rm -f $(OUTPUT)

