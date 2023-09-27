#!/bin/bash

#install prereqs

#If we don't have RVM then install - Used for installing ruby & rails
if ! [ -d /home/vagrant/.adsf ]; then
    echo "installing ADSF"
    cd
    git clone https://github.com/excid3/asdf.git ~/.asdf
    echo '. "$HOME/.asdf/asdf.sh"' >> ~/.bashrc
    echo '. "$HOME/.asdf/completions/asdf.bash"' >> ~/.bashrc
    echo 'legacy_version_file = yes' >> ~/.asdfrc
    echo 'export EDITOR="code --wait"' >> ~/.bashrc

    source $HOME/.asdf/asdf.sh
    source $HOME/.asdf/completions/asdf.bash

    asdf plugin add ruby
    asdf plugin add nodejs

    asdf install ruby 3.2.2
    asdf global ruby 3.2.2

    # Update to the latest Rubygems version
    gem update --system

    asdf install nodejs 18.16.1
    asdf global nodejs 18.16.1

    npm install -g yarn

    gem install rails -v 7.0.6
    gem install solr_wrapper
fi
