#!/bin/bash
set -e

echo "Starting application with PM2..."
cd /home/ubuntu/node-js-app-ec2

# Ensure PM2 is installed globally
if ! command -v pm2 &> /dev/null
then
    echo "PM2 not found, installing..."
    npm install -g pm2
fi

pm2 restart node-app || pm2 start index.js --name "node-app"

# Save PM2 process list
pm2 save
