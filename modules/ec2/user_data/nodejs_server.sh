#!/bin/bash
# Update the system
sudo apt-get update
# Install Node.js and npm
sudo apt-get install -y nodejs npm
# Install PM2 globally
sudo npm install pm2@latest -g
# Install Git
sudo apt-get install -y git
# # Clone the repository from Git (replace with your repository URL)
# git clone https://github.com/your-repo/nodejs-app.git /var/www/nodejs-app
# # Navigate to the app directory
# cd /var/www/nodejs-app
# # Install dependencies
# npm install
# # Start the application using PM2
# pm2 start app.js

# # Save the PM2 process list and configure it to start at boot
# pm2 save
# pm2 startup systemd
