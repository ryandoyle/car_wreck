#!/bin/bash
# Install puppet
rpm -q puppetlabs-release 2>&1 > /dev/null || rpm -ivh http://yum.puppetlabs.com/el/6/products/i386/puppetlabs-release-6-5.noarch.rpm
rpm -q puppet 2>&1 > /dev/null || yum -y install puppet
# Run puppet
puppet apply --modulepath ./puppet/modules puppet/manifests/site.pp
