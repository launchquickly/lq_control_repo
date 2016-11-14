class profile::eclipse {

  class { 'eclipse':
    method          => 'download',
    package         => 'java',
    release_name    => 'neon',
    service_release => '1',
  }
  
}