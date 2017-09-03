class profile::awscli {

  include 'awscli'
  
  package { 'aws-shell':
    provider => 'pip',
    ensure   => installed,
    require  => Package['pip'],
  }

}