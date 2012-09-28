class squid::reverse inherits squid {

    File {
        ensure => file,
        require => Package['squid'],
        notify => Service['squid'],
    }
    file {'/etc/squid/squid.conf':
        content => template('squid/squid.conf.erb'),
    }
    # Deploy custom error pages so it not as obvious it's Squid
    file {'/usr/share/squid/errors/en/ERR_CONNECT_FAIL':
        source => "puppet:///modules/squid/ERR_CUSTOM",
    }
    file {'/usr/share/squid/errors/en/ERR_CANNOT_FORWARD':
        source => "puppet:///modules/squid/ERR_CUSTOM",
    }
    Service['squid'] { require +> File['/etc/squid/squid.conf']}
}
