class profile::elm {

  package { 'elm':
    ensure   => 'present',
    provider => 'npm',
  }

}