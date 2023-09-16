#!/bin/bash

# Define the file where you want to store the entries
output_file="elektro.txt"
nrp_start=5022231001
nrp_end=5022231253

# Loop through the range of usernames and create entries
for ((i=nrp_start; i<=nrp_end; i++)); do
    username="$i"
    email="$i@gmail.com"
    password="123456"
    role="student"
    
    # Combine the fields into a single entry
    entry="$username $email $password $role"
    
    # Append the entry to the output file
    echo "$entry" >> "$output_file"
done

echo "Entries have been written to $output_file"

