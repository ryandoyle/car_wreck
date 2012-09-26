class selinux::disabled {
    # Needed for /usr/sbin/setenforce
    package {'policycoreutils': ensure => installed }

    exec {'disable-selinux':
        command => "/usr/sbin/setenforce 0",
        unless => "/usr/sbin/sestatus | /bin/grep -E 'Current mode:.*permissive|SELinux status:.*disabled'",
        require => Package['policycoreutils'],
    }
}
