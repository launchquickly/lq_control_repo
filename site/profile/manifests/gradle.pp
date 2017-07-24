class profile::gradle {

  archive { '/opt/gradle-4.0.1-bin.zip':
    ensure        => present,
    extract       => true,
    extract_path  => '/opt',
    source        => 'https://services.gradle.org/distributions/gradle-4.0.1-bin.zip',
    creates       => '/opt/gradle',
    cleanup       => true,
  }
  
  file { '/usr/local/bin/gradle':
    ensure => 'link',
    target => '/opt/gradle-4.0.1/bin/gradle',
  }

}