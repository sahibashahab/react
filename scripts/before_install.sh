#!/bin/bash

# Change working directory
cd /home/ec2-user/server

# Install NVM (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

# Source nvm to make it available in the current session
export NVM_DIR="/home/ec2-user/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# Install Node.js 14.x using NVM
nvm install 14

# Set Node.js 14.x as the default version
nvm use 14
nvm alias default 14

# Install PM2 globally
npm install pm2@latest -g
