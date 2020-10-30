# pdftoc: adding PDF bookmarks

**Circuit Analysis and Design by Ulaby, Maharbiz, and Furse**

Website: http://cad.eecs.umich.edu/

The as-distributed PDF version of this free textbook has bookmarks do not match the content structure of the document.


# Information
I use PDF bookmarks to assist in navigating large documents, especially when using as a reference.
This navigation is especially quick with my usual PDF viewer `zathura` (https://pwmt.org/projects/zathura/), which is focused on keyboard-centric operation.

The small utility `totoc.py` creates a file suitable in a format expected by the tool `pdftk` (https://www.pdflabs.com/tools/pdftk-the-pdf-toolkit/) from an input file (`toc.votl`) in a simple format:

(page-number) Bookmark text
<tab>(page-number) Second-level text 1
<tab><tab>(page-number) Third-level text
<tab>(page-number) Second-level text 2

The `votl` Vim Outliner Plugin (https://github.com/insanum/votl) is convenient for editing a file with this format.

# Requirements
* `pdftk` (`sudo apt install pdftk`)
* Python 3
