resources { 'firewall':
  purge => true,
}

Firewall {
  before     => Class['firewall::post'],
  require    => Class['firewall::pre'],
}

class { ['firewall::pre', 'firewall::post']: }

firewall { '200 Allow Puppet Master':
  dport => '8140',
  proto => 'tcp',
  action => 'accept',
}

