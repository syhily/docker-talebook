#!/usr/bin/env bash

# Manually run this scripts if you know what you are doing now.
rsync -c /volume1/docker/talebook/books/library/metadata.db /volume1/docker/talebook/ramdisk/metadata.db

# Print the md5 of two files on terminal.
md5sum /volume1/docker/talebook/ramdisk/metadata.db
md5sum /volume1/docker/talebook/books/library/metadata.db
