class ntp {
  package { 'ntp':
    ensure => installed,
  }
  file { 'ntp.conf':
    path     => '/etc/ntp.conf',
    ensure   => file,
    require  => Package['ntp'],
    source   => "puppet:///modules/ntp/ntp.conf",
  } 
  service { 'ntp':
    name      => 'ntp',
    ensure    => running,
    subscribe => [Package['ntp'], File['/etc/ntp.conf']],
    enable    => true,
  }
}
