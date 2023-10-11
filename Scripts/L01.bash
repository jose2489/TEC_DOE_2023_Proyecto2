#!/bin/bash

# Get system hostname
HOSTNAME=$(hostname)

# Array of scene paths
SCENE_PATHS=(
  "/media/jupiterl/3044208E442058BC/Common Files/pbrt-v3-scenes/buddha-fractal/buddha-fractal-bvh-halton.pbrt"
  "/media/jupiterl/3044208E442058BC/Common Files/pbrt-v3-scenes/buddha-fractal/buddha-fractal-bvh-maxmindist.pbrt"
  "/media/jupiterl/3044208E442058BC/Common Files/pbrt-v3-scenes/buddha-fractal/buddha-fractal-kdtree-halton.pbrt"
  "/media/jupiterl/3044208E442058BC/Common Files/pbrt-v3-scenes/buddha-fractal/buddha-fractal-kdtree-maxmindist.pbrt"
  "/media/jupiterl/3044208E442058BC/Common Files/pbrt-v3-scenes/dragon/dragon-bvh-halton.pbrt"
  "/media/jupiterl/3044208E442058BC/Common Files/pbrt-v3-scenes/dragon/dragon-bvh-maxmindist.pbrt"
  "/media/jupiterl/3044208E442058BC/Common Files/pbrt-v3-scenes/dragon/dragon-kdtree-halton.pbrt"
  "/media/jupiterl/3044208E442058BC/Common Files/pbrt-v3-scenes/dragon/dragon-kdtree-maxmindist.pbrt"
  "/media/jupiterl/3044208E442058BC/Common Files/pbrt-v3-scenes/pbrt-book/book-bvh-halton.pbrt"
  "/media/jupiterl/3044208E442058BC/Common Files/pbrt-v3-scenes/pbrt-book/book-bvh-maxmindist.pbrt"
  "/media/jupiterl/3044208E442058BC/Common Files/pbrt-v3-scenes/pbrt-book/book-kdtree-halton.pbrt"
  "/media/jupiterl/3044208E442058BC/Common Files/pbrt-v3-scenes/pbrt-book/book-kdtree-maxmindist.pbrt"
  "/media/jupiterl/3044208E442058BC/Common Files/pbrt-v3-scenes/veach-bidir/bidir-bvh-halton.pbrt"
  "/media/jupiterl/3044208E442058BC/Common Files/pbrt-v3-scenes/veach-bidir/bidir-bvh-maxmindist.pbrt"
  "/media/jupiterl/3044208E442058BC/Common Files/pbrt-v3-scenes/veach-bidir/bidir-kdtree-halton.pbrt"
  "/media/jupiterl/3044208E442058BC/Common Files/pbrt-v3-scenes/veach-bidir/bidir-kdtree-maxmindist.pbrt"
)

# Randomly shuffle the array
shuf -e "${SCENE_PATHS[@]}"

# Take user input for log file name
read -p "Enter log file name (e.g., pbrt_logs.txt): " LOG_FILE

# Get current timestamp
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

# Loop through each scene file and execute pbrt
for SCENE_PATH in "${SCENE_PATHS[@]}"; do
    echo "Running pbrt for scene $SCENE_PATH on $HOSTNAME at $TIMESTAMP" >> "$LOG_FILE"
    date >> "$LOG_FILE"
    ./pbrt "$SCENE_PATH" >> "$LOG_FILE"
    date >> "$LOG_FILE"
done
