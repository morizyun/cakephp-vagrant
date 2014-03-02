class php53
{

    #PHP 5.3 setup

    package
    {
        "python-software-properties":
            ensure => present,
            require => Exec['php53 apt update']
    }

    #https://launchpad.net/~ondrej/+archive/php5
    exec
    {
        'add php53 apt-repo':
            command => '/usr/bin/add-apt-repository ppa:ondrej/php5 -y',
            require => Package['python-software-properties'],
    }

    exec { "php53 apt update":
        command => 'apt-get update',
    }
}
