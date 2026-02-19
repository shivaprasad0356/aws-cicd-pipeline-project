#!/bin/bash
cd /var/www/html/app
npm install
# Stop existing server if running
pkill node || true
# Start server in the background
nohup npm start > /dev/null 2>&1 &
