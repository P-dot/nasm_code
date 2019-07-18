#!/bin/bash

if [ $# -eq 1 ]
then 
	echo "Compiling and Linking ..."

	nasm -f elf $1.asm; ld -m elf_i386 -s -o $1 $1.o

	if [ $? -eq 0 ]
	then 
	   echo "Executing ..."

    ./$1
else 
	echo "Error for compiling and linking"
fi

else 
	echo "Error"
	echo "You must indicate only one element"
	echo "The argument must be the file by for compile without the extension .asm"
fi