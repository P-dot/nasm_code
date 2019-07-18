#!/bin/bash

# Program:
#    generate.sh

# Objective;
# Compile and linking a programa in NASM

# Use:
#    ./generate.sh helloworld
#    compile       helloworld.asm
#    link          helloworld.o
#    execute       helloworld

# Verify that it captured 2 arguments
if [ $# -eq 1 ]
then 
   # Message
   echo "Compiling and linking ..."

   # Compile and link
   nasm -f elf $1.asm; ld -m elf_i386 -s -o $1 $1.o

   # Message of execution 
   echo "Executing ..."

   # Executing the generated file
   ./$1

else
   # Error message
   echo "---------------------------------------------------------------"
   echo "Error"
   echo "You must indicate only 1 argument"
   echo "The argument must be the file to compile without extension asm"
   echo "---------------------------------------------------------------"
fi