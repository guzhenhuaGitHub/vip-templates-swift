#!/bin/bash
set -eo pipefail
IFS=$'\n\t'

# Remove all existing files
rm -fR ~/Library/Developer/Xcode/Templates/File\ Templates/VIPTemplates

# Create directory
mkdir -p ~/Library/Developer/Xcode/Templates/File\ Templates/VIPTemplates

# Copy all included templates to the templates directory 
cp -R VIPTemplates ~/Library/Developer/Xcode/Templates/File\ Templates/
