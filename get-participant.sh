#!/bin/bash

# Define the input file and the desired role(s)
input_file="assets/data/daftar-kelompok.txt"
output_file="output_ids.txt"
# Define all group that you want to assign
desired_group=("TE01" "TE03")

# Loop through the desired roles and extract matching IDs
for role in "${desired_group[@]}"; do
    ids=$(grep "$role" "$input_file" | cut -f1 | tr '\n' ',')

    echo "$ids" >> "$output_file"
done

echo "IDs for desired roles have been written to $output_file"