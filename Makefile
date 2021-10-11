red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

check:
	@if ! command -v "mdspell" > /dev/null ; then \
		echo "${red}mdspell is not installed${reset}"; \
		echo "${red}Install it via 'npm i markdown-spellcheck -g'${reset}"; \
		exit; \
	fi
	@if ! command -v "xelatex" > /dev/null ; then \
		echo "${red}xelatex is not installed${reset}"; \
		echo "${red}Install it via 'pip install xelatex'${reset}"; \
		exit; \
	fi
	@if [ ! -d "build" ]; then mkdir "build"; fi
	@if [ ! -d "chapters" ]; then mkdir "build"; fi
	@if [ ! -e "cover.png" ]; then \
		echo "${red}cover.png does not exist${reset}"; \
	fi

spelling: check
	@mdspell "chapters/**/*.md" -n --en-gb

build-pdf: spelling
	pandoc -f markdown+smart --toc --pdf-engine=xelatex --epub-embed-font='fonts/*.ttf' -o build/book.pdf metadata.txt chapters/**.md

build-epub: spelling
	pandoc -f markdown+smart --toc --epub-embed-font='fonts/*.ttf' -o build/book.epub metadata.txt chapters/**.md

.PHONY: build 
build: build-pdf build-epub