#!/bin/bash

# Directory where the input data is located
INPUT_DIR="./data/input"

# Directory to store FastQC reports
OUTPUT_DIR="./data/fastqc_output"

# Create output directory if it doesn't exist
mkdir -p $OUTPUT_DIR

# Run FastQC for each .fastq file in the input directory
for file in $INPUT_DIR/*.fastq
do
  fastqc -o $OUTPUT_DIR $file
done
