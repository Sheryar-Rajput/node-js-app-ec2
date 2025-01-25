#!/bin/bash
# Update system packages
sudo yum update -y

# Install Node.js and npm (LTS version)
curl -sL https://rpm.nodesource.com/setup_18.x | sudo bash -
sudo yum install -y nodejs

# Install PM2 to manage Node.js application
sudo npm install pm2@latest -g

# Install Git to pull code from repository
sudo yum install git -y

# Install Nginx
sudo yum install nginx
sudo systemctl start nginx
sudo systemctl enable nginx

# Clone your public repository
git clone https://github.com/Sheryar-Rajput/node-js-app-ec2.git

# cd 
cd *node
# Install dependencies for your Node.js app
npm install

# Start the Node.js app with PM2 (adjust the entry file if necessary, e.g., index.js)
pm2 start index.js
pm2 startup systemd
pm2 save

cd ..
sudo systemctl restart nginx
