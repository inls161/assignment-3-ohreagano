#!/bin/bash

# Declare input argument as a variable
INPUT=$1

# 
echo "Going to convert $INPUT to HTML, DOCX, ODT, and PDF"

# Request name for output files
echo "What do you want to name the converted files?"

# Read in file name
read FILENAME

# Tell user the script is converting files
echo "Converting $INPUT to $FILENAME..."

# Convert markdown to HTML
pandoc -S -o $FILENAME.html $INPUT

# Convert markdown to DOCX
pandoc -S -o $FILENAME.docx $INPUT

# Convert markdown to ODT
pandoc -S -o $FILENAME.odt $INPUT

# Convert markdown to PDF
pandoc -S -o $FILENAME.pdf $INPUT

# Tell user script has converted files to 4 output formats
echo "Converted $1 to HTML, DOCX, ODT, and PDF"
