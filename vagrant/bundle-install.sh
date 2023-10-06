#!/bin/bash

echo "Start of bundle-install.sh"

# Spotlight
cd
if [ ! -e dur-spotlight/app ]; then
    echo "Spotlight bundle install"

    # Need these lines for initial provisioning, as parent environment has not yet had these executed
    source $HOME/.asdf/asdf.sh
    source $HOME/.asdf/completions/asdf.bash

    # Create new Spotlight application
    SKIP_TRANSLATION=1 rails new dur-spotlight -m https://raw.githubusercontent.com/projectblacklight/spotlight/main/template.rb
    cd dur-spotlight
    SKIP_TRANSLATION=1 rake db:migrate
fi

echo "End of bundle-install.sh"
