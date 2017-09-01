class role::elmdev {
   include profile::base
   include profile::gui
   contain profile::nodejs
   contain profile::elm
   include profile::visualstudiocode
   include profile::chrome
   include profile::utils
   
   Class['profile::nodejs'] -> Class['profile::elm']
}