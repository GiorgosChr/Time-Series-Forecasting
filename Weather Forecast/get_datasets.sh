#!/bin/bash

# This script uses the ml_env_mac conda environment.
# It downloads "The Weather Dataset" from Kaggle: 
# https://www.kaggle.com/datasets/guillemservera/global-daily-climate-data

CURRENT_DIR=$(pwd)
DATA_DIR="../data"
DATASET_DIR="global-daily-climate-data"
ZIP_FILE="${DATASET_DIR}.zip"

# Ensure the data directory exists
if [ ! -d "$DATA_DIR" ]; then
    echo "Data directory does not exist. Creating it..."
    mkdir -p "$DATA_DIR"
fi

cd "$DATA_DIR" || exit

# Check if dataset already exists
if [ -d "$DATASET_DIR" ]; then
    echo "Dataset already downloaded."
    read -p "Do you want to delete and redownload it? [y/n]: " choice
    if [ "$choice" == "y" ]; then
        echo "Deleting existing dataset..."
        rm -rf "$DATASET_DIR"
    else
        echo "Keeping the existing dataset."
        exit 0
    fi
fi

# Download and unzip
echo "Downloading dataset..."
kaggle datasets download guillemservera/global-daily-climate-data
echo "Unzipping dataset..."
unzip "$ZIP_FILE" -d "$DATASET_DIR"
rm "$ZIP_FILE"

cd "$CURRENT_DIR"
