class user::root {
    # Deploy broken bashrc
    file {"/root/.bashrc":
        ensure  => file,
        source  => "puppet:///modules/user/root.bashrc",
        owner   => root,
        group   => root,
        mode    => 664,
    }
    file {"/root":
        ensure  => directory,
        owner   => root,
        group   => root,
        mode    => 700,
    }
}
