build:
	pandoc -f markdown+smart --toc --epub-embed-font='fonts/*.ttf' -o build/book.epub metadata.txt chapters/*.md