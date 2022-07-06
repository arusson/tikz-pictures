# Tikz Drawings

This is a small collection of some Ti*k*Z pictures I made.

Each are written as a `standalone` LaTeX file, so the resulting PDF has the size of the picture.

Conversion to another format such as SVG can be done with a tool such as Inkscape:
```
inkscape figure.pdf --pdf-poppler -o figure.svg
```
Option `--pdf-poppler` is useful to keep the original look of the font (otherwise the font might be ugly).

You can use the Makefile to get the pictures as PDF or SVG with the targets `pdf` and `svg`.