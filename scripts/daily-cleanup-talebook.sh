#!/usr/bin/env bash

# run me as a scheduled task every day with the root user.

## Backup database schema
docker exec talebook_db_1 /usr/bin/mysqldump -u talebook --password=talebook --no-data --no-tablespaces talebook > /volume1/docker/talebook/settings/talebook.sql

## Clean up the unneed files.
rm -rf /volume1/docker/talebook/books/extract/*
rm -rf /volume1/docker/talebook/books/progress/*
rm -rf /volume1/docker/talebook/books/upload/*
rm -rf /volume1/docker/talebook/books/imports/*
rm -rf /volume1/docker/talebook/.Trash-0

## Empty the access logs
echo "" > /volume1/docker/talebook/log/talebook.log
echo "" > /volume1/docker/talebook/log/nodejs.log
echo "" > /volume1/docker/talebook/log/nginx/talebook-access.log
echo "" > /volume1/docker/talebook/log/nginx/talebook-error.log
