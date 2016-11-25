class profile::atomelm {

  package { 'language-elm':
    ensure   => latest,
    provider => apm,
  }
}