class profile::elm {

  package { 'elm':
    ensure   => 'present',
    provider => 'npm',
  }

  archive { '/usr/local/bin/elm-format-0.18-0.5.2-alpha-linux-x64.tgz':
    ensure        => present,
    extract       => true,
    extract_path  => '/usr/local/bin',
    source        => 'https://github.com/avh4/elm-format/releases/download/0.5.2-alpha/elm-format-0.18-0.5.2-alpha-linux-x64.tgz',
    creates       => '/usr/local/bin/elm-format',
    cleanup       => true,
  }

}
