#!/bin/bash

# Log the output of all commands to /tmp/after_install.log
exec > >(tee /tmp/after_install.log) 2>&1
set -x  # Enable command tracing for debugging

# Change to the server directory
cd /home/ec2-user/server
echo "Changed to /home/ec2-user/server"

# Remove unused code (node_modules and build)
echo "Removing unused code..."
rm -rf node_modules
rm -rf build

# Install node_modules and make the React build
echo "Installing node modules..."
npm install --verbose

echo "Running npm build..."
npm run build
