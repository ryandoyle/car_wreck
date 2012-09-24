class instructions{
    file {"/root/INSTRUCTIONS.txt":
        ensure => file,
        owner => root,
        group => root,
        mode => 600,
        source => "puppet:///modules/instructions/INSTRUCTIONS.txt",
    }
}
