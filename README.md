To use this to set up a machine to be a proper drizzle build slave, run
this:


For instance:

/var/lib/gems/1.8/bin/puppet apply --modulepath=`pwd`/modules manifests/slave.pp

or

/var/lib/gems/1.8/bin/puppet apply --modulepath=`pwd`/modules manifests/server.pp
