node default {
    include user::root
    include instructions
    include iptables
    include squid::reverse
    include apache::disabled
    include uploader_app
}
