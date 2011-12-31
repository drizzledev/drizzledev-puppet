import "users"
#
# Abstract classes:
#
class drizzle_base {
  include drizzle_project::users
  include ssh
  include exim
  include sudoers

  class { 'iptables':
    public_tcp_ports => $iptables_public_tcp_ports,
  }
  
  package { "ntp":
    ensure => installed
    }

  group { 'puppet':
    ensure => 'present'
  }

  service { 'ntpd':
    name       => 'ntp',
    ensure     => running,
    enable     => true,
    hasrestart => true,
    require => Package['ntp'],
  }

  $packages = ["python-software-properties",
               "bzr",
               "git",
               "python-setuptools",
               "python-virtualenv",
               "byobu"]
  package { $packages: ensure => "latest" }

}

class drizzle_server {
  include drizzle_base
  realize (
    User::Virtual::Localuser["mordred"],
    User::Virtual::Localuser["fallenpegasus"],
    User::Virtual::Localuser["krow"],
  )

}

class drizzle_jenkins_slave {
  include drizzle_server
  include jenkins_slave
}

#
# Default: should at least behave like an drizzle server
#

node default {
  include drizzle_jenkins_slave
}
