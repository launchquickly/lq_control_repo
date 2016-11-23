class profile::atom {

  apt::ppa { 'ppa:webupd8team/atom': }
  ->
  package { 'atom':
    ensure   => 'present',
  }
}