class motd {
file { '/etc/motd':
ensure => file,
content => template('motd/motd.erb'),
}
}
