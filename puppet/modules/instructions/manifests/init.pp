class instructions{
    file {"/etc/motd":
        ensure => file,
        owner => root,
        group => root,
        mode => 644,
        source => "puppet:///modules/instructions/INSTRUCTIONS.txt",
    }
}
