apt-get update
apt-get -y --force-yes upgrade
apt-get install -y --force-yes git rubygems
gem install --no-rdoc --no-ri --version=1.6.0 facter
gem install --no-rdoc --no-ri --version=2.7.1 puppet
cd /root
git clone git://github.com/drizzledev/drizzledev-puppet.git
cd drizzledev-puppet
/var/lib/gems/1.8/bin/puppet apply --modulepath=`pwd`/modules manifests/site.pp

