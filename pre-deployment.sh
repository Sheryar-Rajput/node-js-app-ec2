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
cd node-js-app-ec2
# Install dependencies for your Node.js app
npm install

# Start the Node.js app with PM2 (adjust the entry file if necessary, e.g., index.js)
pm2 start index.js
pm2 startup systemd
pm2 save

cd ..

# Nginx configuration for Node.js app

# need to do this after ec2 start
#  /etc/nginx/nginx.conf
# server {
#     listen 80;

#     server_name your-domain-or-public-ip;

#     location / {
#         proxy_pass http://localhost:5000;
#         proxy_http_version 1.1;
#         proxy_set_header Upgrade $http_upgrade;
#         proxy_set_header Connection 'upgrade';
#         proxy_set_header Host $host;
#         proxy_cache_bypass $http_upgrade;
#     }
# }


# Restart Nginx to apply the new configuration
sudo systemctl restart nginx
