# Pandoc Book Maker
Command modified from [johnpaulada/pandoc-markdown-book-template](https://github.com/johnpaulada/pandoc-markdown-book-template)
Command modified from [qasterr/pandoc-book-maker](https://github.com/qasterr/pandoc-book-maker)

## Usage
1. Change the necessary fields in `metadata.txt`.
2. Write as many chapters as you like in the folder `chapters`.  These are easier to manage if you have one file per chapter, eg. `01-introduction.md`, `02-uses.md`, etc.
3. Go to Google Fonts *and pick appropriate fonts*
4. Adjust epub.css to reflect the fonts you chose
5. Add your cover into `cover.png`
6. See [building](#building)


## Building
### Windows
**Requires [Windows Subsystem for Linux](https://docs.microsoft.com/en-us/windows/wsl/about).**

Enter:
```cmd
wsl
```
See [Linux](#linux)

### Linux
(Replace `<make-action>` with whatever make command you wish to run)
```bash
make <make-action>
```

## Contributing
If you get any errors feel free to create an issue.
