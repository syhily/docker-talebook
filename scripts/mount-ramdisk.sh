#!/usr/bin/env bash

# run me as a triggered task on boot up as root
mount -t tmpfs -o size=3% ramdisk /volume1/docker/talebook/ramdisk
sleep 1
cp /volume1/docker/talebook/books/library/metadata.db /volume1/docker/talebook/ramdisk/
