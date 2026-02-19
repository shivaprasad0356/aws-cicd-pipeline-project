#!/bin/bash
# 1. Navigate to the app directory
cd /var/www/html/app


npm install


# If the app is already running, reload it. If not, start it.
if pm2 list | grep -q "my-pro-app"; then
    echo "Reloading existing application..."
    pm2 reload "my-pro-app"
else
    echo "Starting new application..."
    pm2 start app.js --name "my-pro-app"
fi

# 4. Save the PM2 list so it persists on reboot
pm2 save
