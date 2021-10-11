# Pandoc Book Maker
Command modified from [johnpaulada/pandoc-markdown-book-template](https://github.com/johnpaulada/pandoc-markdown-book-template)

## Usage
1. Change the necessary fields in `metadata.txt`.
2. Write as many chapters as you like in the folder `chapters`.
These are easier to manage if you have one file per chapter, eg. `01-introduction.md`, `02-uses.md`, etc.
3. Add your cover into `cover.png`
4. See [building](#building)


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
