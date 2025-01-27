#!/bin/bash
set -e

echo "Starting application with PM2..."
cd /home/ubuntu/node-js-app-ec2

pm2 restart node-app || pm2 start index.js --name "node-app"

# Save PM2 process list
pm2 save
