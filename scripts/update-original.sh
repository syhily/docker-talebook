#!/usr/bin/env bash

# run me as a scheduled task every minute with the root user.
rsync -c /volume1/docker/talebook/ramdisk/metadata.db /volume1/docker/talebook/books/library/metadata.db
