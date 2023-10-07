#!/bin/bash

# Path to the scene file
SCENE_PATH="<Path/Scene.pbrt>"

# Take user input for log file name
read -p "Enter log file name (e.g., pbrt_logs.txt): " LOG_FILE

# Number of times to execute the pbrt.exe command
NUM_EXECUTIONS=5

# Loop to execute the pbrt.exe command and capture output in the log file
for ((i = 1; i <= NUM_EXECUTIONS; i++)); do
    echo "Running pbrt.exe for scene $i" >> "$LOG_FILE"
    date >> "$LOG_FILE"
    pbrt.exe "$SCENE_PATH" >> "$LOG_FILE"
    date >> "$LOG_FILE"
done
