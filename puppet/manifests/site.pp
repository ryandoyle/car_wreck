node default {
    include instructions
    include iptables
    include postfix::broken
    include apache::disabled
    include uploader_app
}
