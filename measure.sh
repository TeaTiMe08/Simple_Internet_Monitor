#!/bin/bash

# CSV file name
csv_file="$1"
# Set the host which you want to ping, best case your Internet Service Provider
host="1.1.1.1"

# Header for the CSV file (if it doesn't exist)
if [ ! -e "$csv_file" ]; then
    echo "Timestamp,Latency(ms)" > "$csv_file"
fi

# Run the ping command and capture the output
ping_output=$(ping -c 1 "$host")

# Extract the latency from the ping output
latency=$(echo "$ping_output" | grep "time=" | cut -d '=' -f 4 | cut -d ' ' -f 1)

# Get the current timestamp
timestamp=$(date +"%Y-%m-%d %H:%M:%S")

# Write data to CSV file
if [ -n "$latency" ]; then
        echo "$timestamp,$latency" >> "$csv_file"
else
        echo "$timestamp,0" >> "$csv_file"
fi
