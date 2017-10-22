class firewall::pre {

   Firewall {
     require => undef,
  }
 
   #Accept all loopback traffic
   firewall { '000 lo traffic':
     proto   => 'all',
     iniface => 'lo',
     action  => 'accept',
}->

  #Drop non-loopback traffic

    firewall { '001 reject non-lo':
     proto   =>   'all',
     iniface =>   '! lo',
     destination => '127.0.0.0/8',
     action    =>  'reject',
}->


  #Accept established inbound connections
    firewall { '002 accept established':
      proto   => 'all',
      state   =>  ['RELATED', 'ESTABLISHED'],
      action  => 'accept',
}->

   #Allow all outbound traffic
     firewall { '003 allow outbound':
       chain  =>  'OUTPUT',
       action => 'accept',
}->

  #Allow ICMP/ping connections
      firewall { '004 allow icmp':
        proto => 'icmp',
        action => 'accept',
 }->

   #Allow SSH connections
      firewall { '005 allow SSH':
        dport => '22',
        proto => 'tcp',
        action => 'accept',
 }->

   #Allow HTTP/HTTPS connections
      firewall { '006 HTTP/HTTPS connections' :
       dport   => ['80','443',],
       proto   => 'tcp',
       action  => 'accept',
  }


}

