class profile::base {

  #the base profile should include component modules that will be on all nodes
  notify { "Environment: ${::environment}": }
  notify { "FQDN       : ${::fqdn}": }
  notify { "IP Address : ${::ipaddress}": }
}
