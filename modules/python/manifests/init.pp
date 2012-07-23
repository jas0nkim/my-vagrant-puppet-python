class python {
  package { "python-debian":
    ensure => present,
    require => Exec["apt-get update"]
  }

  # install python-mysqldb
  package { "python-mysqldb":
    ensure => present,
    require => Package["python-debian", "mysql-server"]
  }

  # install pip
  package { "python-pip":
    ensure => present,
    require => Package["python-debian"]
  }

  package { "python-dev":
    ensure => present,
    require => Package["python-debian"]
  }

  package { "build-essential":
    ensure => present,
    require => Package["python-debian"]
  }

  # update pip
  #exec { "pip install --upgrade pip":
  #  require => Package["python-pip"]
  #}

  # install python virtualenv
  package { "python-virtualenv":
    ensure => present,
    require => Package["python-pip"]
  }

  # install python virtualenvwrapper - virtualenv extension
  package { "virtualenvwrapper":
    ensure => present,
    require => Package["python-virtualenv"]
  }

  # additional bash setting:
  #     - set WORKON_HOME
  #exec { "sh /vagrant/utils/scripts/custom_bashrc":
  #  alias => "custombashrc",
  #  require => Package["virtualenvwrapper"]
  #}
}

