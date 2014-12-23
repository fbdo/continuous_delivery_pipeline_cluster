exec { "apt-get update":
  command => "/usr/bin/apt-get update",
}

include jenkins

include git

class { "maven::maven":
  version => "3.2.2"
}

user { "git":
  ensure     => "present",
  managehome => true,
}

file { "/home/git/.ssh":
  ensure  => directory,
  recurse => true,
  owner => 'git',
  group => 'git',
  mode => 700,
}

file { "/home/git/.ssh/authorized_keys":
    replace => "no",
    ensure  => "present",
    mode    => 600,
}

file { ["/opt/git", "/opt/git/project.git"]:
  ensure  => directory,
  recurse => true,
  owner => 'git',
  group => 'git',
  mode => 770,
}
