class accounts {

   $rootgroup = $osfamily ? {
     'Debian' => 'sudo',
     'RedHat' => 'wheel',
      default => warning('This distribution is not supported by the Accounts module'),
     }

    user { 'mannu':
      ensure     => present,
      home       => '/home/mannu',
      shell      => '/bin/bash',
      managehome => true,
      gid        => 'mannu',
      groups     => "$rootgroup",
      password   => '$1$5s7.bv6w$/RQHrY01GOcwFK2eIzD.3/',
      }
include groups
include ssh
}
