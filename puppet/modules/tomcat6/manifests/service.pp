class tomcat6::service{   
                      service{'tomcat6':
                      ensure => running,
                      hasstatus => true,
                      hasrestart => true,
                      enable => true,
                     require => Class ['tomcat6::config'],
                     }
}
