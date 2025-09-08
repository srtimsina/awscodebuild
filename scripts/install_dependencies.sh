#!/bin/bash
set -e

echo "running install_dependencies.sh" >> /home/ubuntu/app.log

# Ensure Node.js and npm are installed
if ! command -v npm &> /dev/null
then
  echo "Node.js not found, installing..." >> /home/ubuntu/app.log
  curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
  sudo apt-get install -y nodejs
fi

npm install --production >> /home/ubuntu/app.log 2>&1

