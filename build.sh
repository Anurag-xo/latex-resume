#!/usr/bin/env bash

docker build -t sb2nov/latex .
docker run --rm -i -v "$PWD/src":/data -v "$PWD/output":/output sb2nov/latex pdflatex -output-directory=/output main.tex
