class uploader_app {
    include apache

    File {
        owner => root,
        group => root,
        mode => 644,
    }
    file {'/var/www/html/index.php':
        ensure => file,
        source => "puppet:///modules/uploader_app/index.php",
        require => Package['httpd']
    }
    file {'/var/www/html/upload_file.php':
        ensure => file,
        source => "puppet:///modules/uploader_app/upload_file.php",
        require => Package['httpd'],
    }
    file {'/var/www/html/filestore':
        ensure => directory,
        owner => root,
        mode => 755,
    }
}
