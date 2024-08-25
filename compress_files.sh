#!/bin/bash

current_user=$(whoami)

# Set the source and destination directories
SOURCE_DIR="/Users/$current_user/.emacs.d"
DEST_DIR="./"
ARCHIVE_NAME="compressed_files.tar.gz"

# Compress all files in the source directory into a .tar.gz file
# tar -czvf $ARCHIVE_NAME -C $SOURCE_DIR .
tar -czvf $ARCHIVE_NAME -C $SOURCE_DIR \
    elpa \
    quelpa \
    transient
# recentf \
    # .cache \
# .dap-breakpoints \
# .local \


# Optionally, remove the archive from the source directory after copying
# rm $ARCHIVE_NAME

echo "Compression and copying completed successfully."
