#!/usr/bin/env bash

# Patch current talebook for adding default permission.
grep -qxF 'user.permission = ' /var/www/talebook/webserver/handlers/user.py || sed -i '/user.email = email/a \ \ \ \ \ \ \ \ user.permission = '\''DEPRU'\''' /var/www/talebook/webserver/handlers/user.py

# Start talebook
source /var/www/talebook/docker/start.sh
