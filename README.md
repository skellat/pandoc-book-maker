# Pandoc Book Maker
### Command modified from [johnpaulada/pandoc-markdown-book-template](https://github.com/johnpaulada/pandoc-markdown-book-template)

## Usage
1. Change the necessary fields in `metadata.txt`.
2. Write as many chapters as you like. These are easier to manage if you have one file per chapter, eg. `01-introduction.md`, `02-uses.md`, etc.
3. Add your cover
4. See [building](#building)


## Building
If on Windows install Windows Subsystem for Linux (WSL). Open a terminal window and type:
```cmd
build
```

If on Linux type:
```bash
make -B build
```