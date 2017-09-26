class ntp::config{
                 file{'ntp.conf':
                 ensure => file,
                 owner => root,
                 group => root,
                 mode => 0600,
                 path => '/etc/ntp.conf',
                source => "puppet:///modules/ntp/ntp.conf",
                require => Class ['ntp::install'],
                notify => Class ['ntp::service'],
               }
}
