#!/bin/bash

# Declare input argument as a variable
INPUT=$1

#
echo "Going to convert $INPUT to HTML, DOCX, ODT, and PDF"

# Request name for file
echo "What do you want to name the converted files?"

# Read in the file name
read FILENAME

# tell user it is working
echo "Converting $INPUT to $FILENAME..."

# Convert markdown to HTML
pandoc -S -o $FILENAME.html $INPUT

# Convert markdown to DOCX
pandoc -S -o $FILENAME.docx $INPUT

# Convert markdown to ODT
pandoc -S -o $FILENAME.odt $INPUT

# Convert markdown to PDF
pandoc -S -o $FILENAME.pdf $INPUT

# Make the command line read "Converted INPUT-FILENAME to HTML, DOCX, ODT, PDF"
echo "Converted $1 to HTML, DOCX, ODT, and PDF"
