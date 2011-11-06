perl -ple 's/main/main universe/' -i /etc/apt/sources.list
apt-get update
apt-get -y --force-yes upgrade
apt-get install -y --force-yes git rubygems
gem install --no-rdoc --no-ri --version=1.6.0 facter
gem install --no-rdoc --no-ri --version=2.7.1 puppet
cd /root
git clone git://github.com/openstack/openstack-ci-puppet.git
cd openstack-ci-puppet
/var/lib/gems/1.8/bin/puppet apply --modulepath=`pwd`/modules manifests/site.pp

