class apache::disabled {
    include apache
    service {"httpd": 
        ensure => stopped, 
        enable => false,
    }
    # Make init script not executable
    file {"/etc/init.d/httpd":
        ensure => file,
        owner => root,
        group => root,
        mode  => 644,
    }
}

