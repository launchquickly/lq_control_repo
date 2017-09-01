class profile::visualstudiocode {

  exec{ 'gpg-microsoft.asc':
    command => '/usr/bin/curl -q https://packages.microsoft.com/keys/microsoft.asc | /usr/bin/gpg --dearmor > /tmp/microsoft.gpg',
    creates => '/tmp/microsoft.gpg',
  }->
  file { '/etc/apt/trusted.gpg.d/microsoft.gpg':
    source => '/tmp/microsoft.gpg,
    owner   => 'root',
    group   => 'root',
    mode    => 0644
  }-> 
  file { '/etc/apt/sources.list.d/vscode.list':
    content => 'deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main',
    owner   => 'root',
    group   => 'root',
    mode    => 0644
  }->
  exec { 'apt-update':
    command => '/usr/bin/apt-get update',
  }->
  package { 'code':
    ensure   => 'present',
  }
}
