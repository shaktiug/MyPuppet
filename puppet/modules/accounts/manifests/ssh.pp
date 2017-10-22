class accounts::ssh {

$sshname = $osfamily ? {
 'Debian' => 'ssh',
 'RedHat' => 'sshd',
  default => warning('Something wrong!!!'),
}
 
    file { '/etc/ssh/sshd_config':
        ensure => present,
        source => 'puppet:///modules/accounts/sshd_config',
        notify => Service["$sshname"],
   }
    
    service { "$sshname":
      hasrestart => true,
   }
}
