#!/bin/sh

#ctags -R
ctags --exclude=".git" --exclude=".svn" -R --c-kinds=+p --fields=+S .
