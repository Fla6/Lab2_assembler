#!/bin/bash

echo -n "File: "
read file
if test -f "$file"
then
nasm -g -f elf64 -F dwarf $file 
ld "${file%.*}".o -o "${file%.*}"
fi