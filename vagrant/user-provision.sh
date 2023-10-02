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

    echo "installing Ruby"
    asdf install ruby 3.2.2
    asdf global ruby 3.2.2

    # Update to the latest Rubygems version
    gem update --system

    echo "installing NodeJS"
    asdf install nodejs 18.16.1
    asdf global nodejs 18.16.1

    echo "installing Yarn"
    npm install -g yarn

    echo "installing Rails"
    gem install rails -v 7.0.6

    echo "installing Solr Wrapper"
    gem install solr_wrapper
fi
