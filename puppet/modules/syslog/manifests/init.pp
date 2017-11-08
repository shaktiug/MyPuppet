class syslog {
$syslogpkg = hiera('syslogpkg','rsyslog')
package {"$syslogpkg":
ensure => 'installed',
}
service {"$syslogpkg":
ensure => true,
hasstatus => true,
hasrestart => true,
enable => true,
require => Package["$syslogpkg"],
}
}
