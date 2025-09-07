#!/bin/bash
# Install production dependencies for app
echo "running install dep.sh"  >> /home/ubuntu/app.log
npm install --production
