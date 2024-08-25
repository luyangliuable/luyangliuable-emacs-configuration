#!/bin/bash

folder=$1
current_user=$(whoami)
spacemacs_path="/Users/$current_user/luyangliuable-emacs-configuration/init.el"

if [ -n "$folder" ]; then
    spacemacs_path="/Users/$current_user/$folder/init.el"
fi

echo "$spacemacs_path"

echo ";; Custom emacs config" > /Users/blackfish/.spacemacs
echo ";; Spacemacs init file path: $spacemacs_path" >> /Users/blackfish/.spacemacs
echo "(load \"$spacemacs_path\")" >> /Users/blackfish/.spacemacs

# rm -rf ~/.emacs.d/*
# echo "Removed old .emacs.d folder successfully."

mkdir -p ~/.emacs.d
echo "Created new .emacs.d folder successfully."

# Extract the tar file into ~/.emacs.d and suppress output
if tar -xvf ./compressed_files.tar.gz -C ~/.emacs.d > /dev/null 2>&1; then
    echo "Extraction completed successfully."
else
    echo "Extraction failed."
fi
