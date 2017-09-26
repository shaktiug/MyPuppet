class httpd::config{
              file{'httpd.conf':
              ensure => file,
              owner => root,
              group => root,
              mode => 0600,
              path => '/etc/httpd/conf/httpd.conf',
              source => "puppet:///modules/httpd/httpd.conf",
              require => Class['httpd::install'],
              notify => Class['httpd::service'],
             }
}
     
