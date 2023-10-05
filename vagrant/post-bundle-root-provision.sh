#!/bin/sh

echo "Start post-bundle-root-provision.sh"

# Enable and start Solr and Sidekiq
systemctl enable solr
systemctl start solr
systemctl enable sidekiq
systemctl start sidekiq

echo "End of post-bundle-root-provision.sh"
