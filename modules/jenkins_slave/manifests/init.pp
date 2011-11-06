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
      "libldap2-dev",
      "libmemcached-dev",
      "libpam0g-dev",
      "libpcre3-dev",
      "libprotobuf-dev",
      "libreadline-dev",
      "libtokyocabinet-dev",
      "libtool",
      "libv8-dev",
      "openjdk-6-jre",
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

    file { '/etc/locale.gen':
      owner => 'root',
      group => 'root',
      mode => 644,
      ensure => 'present',
      source => [
         "puppet:///modules/jenkins_slave/locale.gen",
       ],
    }

    exec { "Regenerate locales":
      path        => "/usr/sbin:/usr/bin:/sbin:/bin",
      environment => "HOME=/root",
      command     => "/usr/sbin/locale-gen",
      user        => "root",
      group       => "root",
      logoutput   => on_failure,
      subscribe   => File['/etc/locale.gen'],
      require     => File['/etc/locale.gen'],
    }

}
