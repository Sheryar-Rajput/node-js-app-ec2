#!/bin/bash
set -e

echo "Navigating to application directory..."
cd /home/ubuntu/node-js-app-ec2

echo "Installing dependencies..."
npm install
