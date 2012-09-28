class squid {
    package {'squid': ensure => installed }
    service {'squid': 
        ensure => running,
        require => Package['squid'],
    }
}
