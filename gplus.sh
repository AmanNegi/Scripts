#!/bin/bash

# Check if a filename was provided as an argument
if [ $# -eq 0 ]
then
    echo "Error: No filename provided."
    echo "Usage: ./compile_and_run.sh <filename> [inputfile]"
    exit 1
fi

echo "Compiling file..."
# Get the filename from the command line argument
filename=$1

# Check if the output file exists and delete it if it does
if [ -f "output.exe" ]
then
    echo "Deleting existing output file..."
    rm output.exe
fi
# Compile the file using g++
g++ $filename -o output.exe

# Check if the compilation was successful
if [ $? -eq 0 ]
then
    echo "Output:"
    # Check if an input file was provided as a second argument
    if [ $# -eq 2 ]
    then
        # Run the executable with the input file as input
        ./output.exe < $2
    else
        # Run the executable in the same terminal window
        ./output.exe
    fi

    # Wait for the executable to finish
    wait

    # Print a newline character to separate the output from the prompt
    echo ""

else
    echo "Compilation failed."
fi