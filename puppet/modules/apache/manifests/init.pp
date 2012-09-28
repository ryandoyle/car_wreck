class apache {
    package{'httpd': ensure => installed }
    package{'php': ensure => installed }
}
