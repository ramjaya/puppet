class lamp {
exec {"/usr/bin/apt-get update": }
->
package {"apache2": ensure => present }
->
package {"mysql-server": ensure => present }
->
package {"php5": ensure => present }
->
service {"apache2": ensure => running }
->
service {"mysql": ensure => running }
->
file { '/var/www/html/info.php': content => '<?php phpinfo(); ?>' }
}

