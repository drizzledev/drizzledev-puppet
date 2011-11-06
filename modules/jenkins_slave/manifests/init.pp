class jenkins_slave {

    jenkinsuser { "jenkins":
      ensure => present,
    }

    $packages = ["autoconf",
      "automake",
      "bison",
      "doxygen",
      "flex",
      "gettext",
      "gperf",
      "intltool",
      "libaio-dev",
      "libboost-date-time-dev",
      "libboost-dev",
      "libboost-filesystem-dev",
      "libboost-iostreams-dev",
      "libboost-program-options-dev",
      "libboost-regex-dev",
      "libboost-test-dev",
      "libboost-thread-dev",
      "libcloog-ppl-dev",
      "libcurl4-gnutls-dev",
      "libgearman-dev",
      "libhaildb-dev",
      "libldap2-dev",
      "libmemcached-dev",
      "libpam0g-dev",
      "libpcre3-dev",
      "libprotobuf-dev",
      "librabbitmq-dev",
      "libreadline-dev",
      "libtokyocabinet-dev",
      "libtool",
      "pandora-build",
      "protobuf-compiler",
      "python-sphinx",
      "systemtap-sdt-dev",
      "uuid-dev",
      "zlib1g-dev"]

    package { $packages:
      ensure => "latest",
    }

    file { 'profilerubygems':
      name => '/etc/profile.d/rubygems.sh',
      owner => 'root',
      group => 'root',
      mode => 644,
      ensure => 'present',
      source => [
         "puppet:///modules/jenkins_slave/rubygems.sh",
       ],
    }

}
