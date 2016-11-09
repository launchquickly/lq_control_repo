class profile::eclipse {

  class { 'archive::prerequisites': }
  
  class { 'eclipse':
    method          => 'download',
    package         => 'java',
    release_name    => 'neon',
    service_release => '1',
  }
  
  Class['archive::prerequisites'] -> Class['eclipse']

}