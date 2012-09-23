class apache::disabled {
    include apache
    service {'httpd': ensure => stopped, }
}
