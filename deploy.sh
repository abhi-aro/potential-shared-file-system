#!/bin/bash

# This script replaces the current serverless.yml file with the config of current Branch

if [ $# -lt 1 ]; then
  echo "Usage(Add source file): $0 <source_file>"
  exit 1
fi

source_file="DEPLOYMENTS/$1.yml"
target_file="serverless.yml"

# Check if source and target file exists
if [ ! -f "$source_file" ]; then
  echo "Source file '$source_file' does not exist."
  exit 1
fi

if [ ! -f "$target_file" ]; then
  echo "Target file '$target_file' does not exist."
  exit 1
fi

# Backup the target file
cp "$target_file" "backup.$target_file"

# Replace the contents of the target file with the source file
cp "$source_file" "$target_file"

echo " '$target_file' contains '$source_file'"
