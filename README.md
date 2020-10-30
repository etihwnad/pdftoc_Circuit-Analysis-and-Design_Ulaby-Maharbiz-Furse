# pdftoc: adding PDF bookmarks

**Circuit Analysis and Design by Ulaby, Maharbiz, and Furse**

Website: http://cad.eecs.umich.edu/

The as-distributed PDF version of this free textbook has bookmarks do not match the content structure of the document.


# Information
I use PDF bookmarks to assist in navigating large documents, especially when using as a reference.
This navigation is especially quick with my usual PDF viewer `zathura` (https://pwmt.org/projects/zathura/), which is focused on keyboard-centric operation.

The small utility `pdf_bookmark.py` reads an input file (`toc.votl`) with bookmark information and uses Ghostscript to add the appropriate additional information.
The file format here is:

(page-number) Bookmark text
<tab>(page-number) Second-level text 1
<tab><tab>(page-number) Third-level text
<tab>(page-number) Second-level text 2

The `votl` Vim Outliner Plugin (https://github.com/insanum/votl) is convenient for editing a file with this format.

NOTE: The `pdf_bookmark.py` here is a modified version of https://github.com/xianghuzhao/pdf-bookmark that accepts the above bookmark format file.
(Less work to modify the code than to port my already-finished file)


# Requirements
* `pdftk` and `gs` (`sudo apt install pdftk ghostscript`)
* Python 3
