class mysql {
  $mysqlpw = "qwe123"

  package { "mysql-server":
    ensure => present,
    require => Exec["apt-get update"]
  }

  package { "libmysqlclient-dev":
    ensure => present,
    require => Package["mysql-server"],
  }

  service { "mysql":
    ensure => running,
    require => Package["mysql-server"],
  }

  exec { "set-mysql-passwrod":
    unless => "mysqladmin -uroot -p$mysqlpw status",
    command => "mysqladmin -uroot password $mysqlpw",
    require => Service["mysql"],
  }
}
