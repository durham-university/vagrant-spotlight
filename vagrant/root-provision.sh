#!/bin/sh

apt-get update
apt-get -y install \
  git-core zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 \
  libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev

apt-get -y install openjdk-19-jre-headless

# Install Subversion because it makes it easier to export the db/migrate folder
apt-get -y install subversion
