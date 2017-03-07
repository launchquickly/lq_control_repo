class profile::gui {

  package { 'xfce4':
    ensure => installed,
  }
  
  package { 'gnome-icon-theme-full':
    ensure => installed,
  }
  
  package { 'tango-icon-theme':
    ensure => installed,
  }

  file { '/etc/X11/Xwrapper.config':
    ensure => present,
  }
  
  file_line { 'Edit /etc/X11/Xwrapper.config to allow anybody':
    path => '/etc/X11/Xwrapper.config',  
    line => 'allowed_users=anybody',
    match   => "allowed_users=console",
  }

  if $facts['os']['name'] == 'Ubuntu' and $facts['os']['release']['major'] == '16.04' {
    package { 'xserver-xorg-legacy':
      ensure => installed,
    }
  } 
  
}
