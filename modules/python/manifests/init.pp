class apache {
  package { "python-debian":
    ensure => present,
    require => Exec["apt-get update"]
  }

  # install setuptools (for v2.6)
  exec { "sh /vagrant/utils/setuptools/setuptools-0.6c11-py2.6.egg"
    require => Package["python-debian"]
  }
}
