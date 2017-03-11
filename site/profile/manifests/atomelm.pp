class profile::atomelm {

  package { 'language-elm':
    ensure   => latest,
    provider => apm,
  }

  package { 'elm-format':
    ensure   => latest,
    provider => apm,
  }
}
