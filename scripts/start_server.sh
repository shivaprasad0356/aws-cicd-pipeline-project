#!/bin/bash
# 1. Navigate to the app directory
cd /var/www/html/app

# 2. Use full paths to ensure the script finds npm and pm2
# Note: On Amazon Linux 2023, these are usually in /usr/bin/
/usr/bin/npm install

# 3. Reload or Start the application
# We use 'reload' for zero-downtime updates if the app is already up
if /usr/bin/pm2 list | grep -q "my-pro-app"; then
    echo "Reloading existing application..."
    /usr/bin/pm2 reload "my-pro-app"
else
    echo "Starting new application..."
    /usr/bin/pm2 start app.js --name "my-pro-app"
fi

# 4. Save the list so it restarts after a server reboot
/usr/bin/pm2 save
