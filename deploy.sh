#!/bin/bash

cd node-js-app-ec2

#  git pull

git pull origin main

# update packages
npm install

pm2 restart 0

cd ..

