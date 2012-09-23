class selinux::disabled {
    exec {'disable-selinux':
        command => "/usr/sbin/setenforce 0",
        unless => "/usr/sbin/sestatus | /bin/grep 'Current mode:.*permissive'",
    }
}
