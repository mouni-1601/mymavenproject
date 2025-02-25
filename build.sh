#!/bin/bash

echo "Starting custom build script..."

# Print current directory for debugging
echo "Current directory: $(pwd)"

# Run Maven clean and install to build the project
echo "Running Maven clean install..."
mvn clean install

# Check the contents of the target directory
echo "Listing contents of target directory:"
ls -l target/

# Check if the JAR file is created
JAR_FILE=$(find target -type f -name "*.jar" | head -n 1)

if [ -f "$JAR_FILE" ]; then
    echo "JAR file found: $JAR_FILE"
else
    echo "JAR file not found!"
fi

# Optionally, you can also print the path to the JAR file for confirmation
echo "Path to JAR file: $JAR_FILE"

# Additional tasks (e.g., copying or archiving the JAR file) can be done here

echo "Build and test process completed."
