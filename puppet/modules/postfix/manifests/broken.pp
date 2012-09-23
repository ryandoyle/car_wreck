class postfix::broken {
    
    include postfix
    include selinux::disabled

    file{'/etc/postfix/master.cf':
        ensure => file,
        source => "puppet:///modules/postfix/broken-master.cf",
        owner => root,
        group => root,
        notify => Service['postfix'],
        require => Exec['disable-selinux'], # Need to bind to port 80
    }
}
