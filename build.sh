#!/bin/bash

# Ensure Maven is available
echo "Current directory: $(pwd)"
echo "Running Maven clean install..."

# Run Maven using the full path
/var/lib/jenkins/tools/hudson.tasks.Maven_MavenInstallation/maven/bin/mvn clean install

# Check for the JAR file after build
echo "Listing contents of target directory:"
ls -l target/

# Verify the JAR file
JAR_FILE=$(find target -name "*.jar" -print -quit)
if [ -z "$JAR_FILE" ]; then
  echo "JAR file not found!"
else
  echo "JAR file found: $JAR_FILE"
fi
