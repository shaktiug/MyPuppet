class ssh::config{
	file{'ssh_config':
		ensure => file,
		owner => root,
		group => root,
		mode => 0600,
		path => '/etc/ssh/sshd_config',
		source => "puppet:///modules/ssh/sshd_config",
		require => Class[ 'ssh::install' ],
		notify => Class[ 'ssh::service' ],
	}
}
