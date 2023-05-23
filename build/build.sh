#!/bin/bash

# Assembler configuration
ASSEMBLER="my-assembler"  # Replace with the name or path of your assembler
SOURCE_FILE="main.asm"   # Replace with the name of your main source code file
OUTPUT_FILE="game.nes"   # Replace with the desired name of your output ROM file

# Assemble the source code
$ASSEMBLER $SOURCE_FILE -o output.obj

# Check if the assembler completed successfully
if [ $? -ne 0 ]; then
    echo "Assembly failed."
    exit 1
fi

# Create the iNES header
echo "; iNES Header" > header.cfg
echo ".inesprg 1" >> header.cfg
echo ".ineschr 1" >> header.cfg
echo ".inesmap 0" >> header.cfg
echo ".inesmir 1" >> header.cfg
echo ".inesbat 0" >> header.cfg
echo ".inespad 0" >> header.cfg
echo ".inesver 1" >> header.cfg

# Combine the header and assembled code into the final ROM file
cat header.cfg output.obj > $OUTPUT_FILE

# Clean up temporary files
rm header.cfg
rm output.obj

echo "Build complete. ROM file generated: $OUTPUT_FILE"
exit 0
