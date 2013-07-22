# nodes.pp

node 'puppet-client.nicira.eng.vmware.com' {
  include ntp
  include db
  }
