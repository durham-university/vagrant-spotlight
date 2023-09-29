#!/bin/bash

echo "Start of bundle-install.sh"

# Spotlight
cd
if [ ! -e dur-spotlight ]; then
    echo "Spotlight bundle install"
    SKIP_TRANSLATION=1 rails new dur-spotlight -m https://raw.githubusercontent.com/projectblacklight/spotlight/main/template.rb
fi

echo "End of bundle-install.sh"
