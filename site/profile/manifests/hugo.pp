class profile::hugo {

  $version = '0.30.2'

  wget::fetch { "https://github.com/gohugoio/hugo/releases/download/v${version}/hugo_${version}_Linux-64bit.deb":
    destination => '/tmp/',
    timeout     => 0,
    verbose     => false,
  }
  
  package { "hugo-${version}":
    provider => dpkg,
    ensure   => installed,
    source   => "/tmp/hugo_${version}_Linux-64bit.deb",
  }
}