class postfix{
    package{'postfix': ensure => installed }
    service{"postfix": 
        ensure => running, 
        enable => true,
    }
}
