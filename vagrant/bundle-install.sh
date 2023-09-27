#!/bin/bash

echo "Start of bundle-install.sh"

# Spotlight
cd
if [ ! -e dur-spotlight ]; then
    echo "Spotlight bundle install"
    mkdir dur-spotlight
    cd dur-spotlight
    bundle install
    bundle exec rake db:migrate
fi

echo "End of bundle-install.sh"
