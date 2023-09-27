#!/bin/bash

echo "Start of bundle-install.sh"

# Spotlight
cd
if [ ! -e dur-spotlight ]; then
    echo "Spotlight bundle install"
    rails new dur-spotlight -m https://raw.githubusercontent.com/projectblacklight/spotlight/main/template.rb
fi

# Get missing db:migrate material
cd
if [ ! -e dur-spotlight/db/migrate/20140128155152_create_roles.rb ]; then
    echo "Fetching missing db/migrate files
    cd dur-spotlight
    svn export --force https://github.com/projectblacklight/spotlight/branches/main/db/migrate db/migrate
    rake db:migrate
fi

echo "End of bundle-install.sh"
