class ntp {
  package { 'ntp':
    ensure => installed,
  }
  service { 'ntp':
    name      => 'ntp',
    ensure    => running,
    require   => Package['ntp'],
    enable    => true,
  }
}
