class iptables {
    package{'iptables': ensure => installed }

    service{'iptables':
        ensure => running,
        require => Package['iptables'],
        hasstatus => true,
    }

    file{'/etc/sysconfig/iptables':
        ensure => file,
        source => 'puppet:///modules/iptables/sysconfig-iptables',
        owner => root,
        group => root,
        mode => 600,
        notify => Service['iptables'],
    }
}
