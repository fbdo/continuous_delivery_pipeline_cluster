exec { "apt-get update":
  command => "/usr/bin/apt-get update",
}

#class { 'java':
#  distribution => 'jdk',
#}

include jenkins
