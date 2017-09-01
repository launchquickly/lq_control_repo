class role::awsdev {
   include profile::base
   include profile::awscli
   include profile::nodejs
   include profile::java
   include profile::maven
   include profile::visualstudiocode
   include profile::utils
}
