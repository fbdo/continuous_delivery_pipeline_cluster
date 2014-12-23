#!/usr/bin/env bash

echo "Installing Puppet and setting it up..."

wget https://apt.puppetlabs.com/puppetlabs-release-trusty.deb
sudo dpkg -i puppetlabs-release-trusty.deb
sudo apt-get update >/dev/null 2>&1

sudo apt-get install -y puppet >/dev/null 2>&1

puppet module install puppetlabs-java

puppet module install puppetlabs-git

