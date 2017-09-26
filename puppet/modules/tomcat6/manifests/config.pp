class tomcat6::config{
                     file{'server.xml':
                     ensure => file,
                     owner => root,
                     group => root,
                     mode => 0600,
                    path => '/etc/tomcat6/server.xml',
                    source => "puppet://modules/tomcat6/server.xml",
                    require => Class ['tomcat6::install'],
                    notify => Class ['tomcat6::service'],
                  }
}
