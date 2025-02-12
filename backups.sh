#!/bin/bash

# this shell script will take backups

src=$1

dest=$2

timestamp=$(date "+%d-%b-%Y-%T")

zip -r "$dest/backup-$timestamp.zip" $src> /dev/null

aws s3 sync $dest s3://batch-9-tws-jayant

echo "backup completed and uploaded to s3"


