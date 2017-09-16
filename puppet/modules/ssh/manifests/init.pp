class ssh{
	class {'::ssh::install':}->
	class {'::ssh::config':}->
	class {'::ssh::service':}->
	Class[ 'ssh' ]
}
