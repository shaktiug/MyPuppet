class tomcat6{
             class {'::tomcat6::install':}->
             class {'::tomcat6::config':}->
             class {'::tomcat6::service':}->
             Class ['tomcat6']
}
