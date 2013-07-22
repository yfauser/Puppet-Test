# Site.pp
import "nodes"

filebucket {main: server => "puppet-master.nicira.eng.vmware.com" }

# defaults
File { backup => main }
Exec { path => "/usr/bin:/usr/sbin/:/bin:/sbin" }
