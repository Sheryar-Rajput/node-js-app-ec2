#!/bin/bash
set -e  # Exit if any command fails

# Stop existing app gracefully
echo "Stopping existing application..."
pm2 stop node-app || true

# Remove old files
echo "Cleaning up old files..."
sudo rm -rf /home/ubuntu/node-js-app-ec2/*
