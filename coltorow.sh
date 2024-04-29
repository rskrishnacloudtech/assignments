#!/bin/bash

# input file
input_file="inputfile.txt"

# Read the column headers
read -r -a headers <<< "$(head -n 1 "$input_file")"

# Iterate over the headers
for header in "${headers[@]}"
do
    echo -n "$header "
    awk -v header="$header" 'NR>1 {print $2}' "$input_file"
done