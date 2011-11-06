define jenkinsuser($ensure = present) {

  group { 'jenkins':
    ensure => 'present'
  }

  user { 'jenkins':
    ensure => 'present',
    comment => 'Jenkins User',
    home => '/home/jenkins',
    gid => 'jenkins',
    shell => '/bin/bash',
    membership => 'minimum',
  }

  file { 'jenkinshome':
    name => '/home/jenkins',
    owner => 'jenkins',
    group => 'jenkins',
    mode => 644,
    ensure => 'directory',
  }
    
  
  file { 'jenkinssshdir':
    name => '/home/jenkins/.ssh',
    owner => 'jenkins',
    group => 'jenkins',
    mode => 600,
    ensure => 'directory',
    require => File['jenkinshome'],
  }

  file { 'jenkinskeys':
    name => '/home/jenkins/.ssh/authorized_keys',
    owner => 'jenkins',
    group => 'jenkins',
    mode => 640,
    content => "ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAIEArULdwPmFGIDRDun6Ys6XFWU1XK9XWwOxKfKabzwpzAllLwOgpqVDX0GmKp0uIZU/ruMIrPq8+9XoZyA7Xp+8npi/lNlLWGI76iDifeA7KU960fSk7zoioYoOQBtymgBap2/Duul2H+etZtPXwgf0lfU5iAwoo2FOFlWGMlBvxAs= Hudson running on hudson.drizzle.org",
    ensure => 'present',
    require => File['jenkinssshdir'],
  }

  file { 'jenkinsbashrc':
    name => '/home/jenkins/.bashrc',
    owner => 'jenkins',
    group => 'jenkins',
    mode => 640,
    source => "/etc/skel/.bashrc",
    replace => 'false',
    ensure => 'present',
  }

  file { 'jenkinsbash_logout':
    name => '/home/jenkins/.bash_logout',
    source => "/etc/skel/.bash_logout",
    owner => 'jenkins',
    group => 'jenkins',
    mode => 640,
    replace => 'false',
    ensure => 'present',
  }

  file { 'jenkinsprofile':
    name => '/home/jenkins/.profile',
    source => "/etc/skel/.profile",
    owner => 'jenkins',
    group => 'jenkins',
    mode => 640,
    replace => 'false',
    ensure => 'present',
  }

  file { 'jenkinssshconfig':
    name => '/home/jenkins/.ssh/config',
    owner => 'jenkins',
    group => 'jenkins',
    mode => 640,
    ensure => 'present',
    require => File['jenkinssshdir'],
    source => [
                "puppet:///modules/jenkins_slave/ssh_config",
              ],
  }

}
