exec { "apt-get update":
  command => "/usr/bin/apt-get update",
}

class { 'java':
  distribution => 'jdk',
}

include git

#file { "/home/vagrant/myproj":
#  ensure  => directory,
#  recurse => true,
#  owner => 'vagrant',
#  mode => 0774,
#}

#vcsrepo { "/home/myuser/myrepo":
#  require  => [Class["sshd"], File['/home/vagrant/myproj']],
#  ensure   => present,
#  provider => git,
#  source   => 'git@git.myhostname.com:repos/myrepo.git',
#  revision => 'master',
#  user     => 'myuser'
#}


