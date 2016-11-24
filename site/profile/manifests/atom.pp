class profile::atom {

  apt::ppa { 'ppa:webupd8team/atom': 
  }->
  package { 'atom':
    ensure   => 'present',
  }->
  file_line { 'Fix Exec on /usr/share/applications/atom.desktop':
    path => '/usr/share/applications/atom.desktop',
    line => 'Exec=env atom %F',
    match => 'Exec=/opt/atom/atom %F',
  }
}