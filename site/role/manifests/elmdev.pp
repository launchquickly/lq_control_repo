class role::elmdev {
   include profile::base
   include profile::gui
   contain profile::nodejs
   contain profile::elm
   contain profile::atom
   contain profile::atomelm
   include profile::chrome
   include profile::utils
   
   Class['profile::nodejs'] -> Class['profile::elm']
   Class['profile::nodejs'] -> Class['profile::atom']
   Class['profile::atom'] -> Class['profile::atomelm']
}