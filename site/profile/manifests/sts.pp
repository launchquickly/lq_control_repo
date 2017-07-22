class profile::sts {

  archive { '/opt/spring-tool-suite-3.9.0.RELEASE-e4.7.0-linux-gtk-x86_64.tar.gz':
    ensure        => present,
    extract       => true,
    extract_path  => '/opt',
    source        => 'http://download.springsource.com/release/STS/3.9.0.RELEASE/dist/e4.7/spring-tool-suite-3.9.0.RELEASE-e4.7.0-linux-gtk-x86_64.tar.gz',
    creates       => '/opt/sts-bundle',
    cleanup       => true,
  }

}