red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`
check:
	@if [ ! -d "build" ]; then mkdir "build"; fi
	@if [ ! -d "chapters" ]; then mkdir "build"; fi
	@if ! command -v "mdspell" > /dev/null ; \
	then \
		echo "${red}mdspell is not installed${reset}"; \
		echo "${red}Install it via 'npm i markdown-spellcheck -g'${reset}"; \
		exit; \
	fi

build: spelling
	pandoc -f markdown+smart --toc --epub-embed-font='fonts/*.ttf' -o build/book.epub metadata.txt chapters/**.md

spelling: check
	@mdspell "chapters/**/*.md" -n --en-gb