class apache {
  package { "python-debian":
    ensure => present,
    require => Exec["apt-get update"]
  }
}
