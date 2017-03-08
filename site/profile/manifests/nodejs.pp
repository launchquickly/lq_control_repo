class profile::nodejs {

  class { 'nodejs': 
    repo_url_suffix => '7.x',
  }

}
