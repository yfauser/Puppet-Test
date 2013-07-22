Class ntp {
      package { 'ntp':
        ensure => installed,
      }
      service { 'ntp':
        name      => $service_name,
        ensure    => running,
        enable    => true,
        subscribe => File['ntp.conf'],
      }
    }
