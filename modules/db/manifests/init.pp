class db {
  class { 'mysql::server':
    config_hash => {
      'root_password' => 'password',
      'bind_address'  => '0.0.0.0',
    },
    enabled     => true,
  }
  mysql::db { 'keystone':
      user          => 'keystone',
      password      => 'password',
      grant 	    => 'all',
      host	    => 'localhost',
      }
  mysql::db { 'nova':
      user          => 'nova',
      password      => 'password',
      grant         => 'all',
      host          => 'localhost',
      }
  mysql::db { 'glance':
      user          => 'glance',
      password      => 'password',
      grant         => 'all',
      host          => 'localhost',
      }
mysql::db { 'cinder':
      user          => 'cinder',
      password      => 'password',
      grant         => 'all',
      host          => 'localhost',
      }
mysql::db { 'quantum':
      user          => 'quantum',
      password      => 'password',
      grant         => 'all',
      host          => 'localhost',
      }
}

