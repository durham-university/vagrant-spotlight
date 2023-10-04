#!/bin/sh

apt-get update
apt-get -y install \
  git-core zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 \
  libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev

apt-get -y install openjdk-19-jre-headless

apt-get -y install emacs nano

# Download and compile latest redis
cd /tmp
wget http://download.redis.io/redis-stable.tar.gz
tar xzf redis-stable.tar.gz
cd redis-stable
make && make install

# Copy service files
cp /vagrant/lib/systemd/system/redis.service /lib/systemd/system/redis.service

# Enable and start redis
systemctl daemon-reload
systemctl enable redis
systemctl start redis
