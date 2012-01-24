# == Class: puppet::master
#
# Manages both puppet client and puppet master.
#
# === Parameters
#
# [*puppet_server_package*]
#   The name of the puppet master package that should be installed. eg puppet-server
#
# [*puppet_server_service*]
#   The name of the registered puppet master service.
#
class puppet::master(
  $config_hash  = {}
) inherits puppet::params {

  package { $puppet::params::puppet_server_package:
    ensure => present,
  }

  exec { "/sbin/chkconfig --add ${puppet::params::puppet_server_service} && /sbin/chkconfig ${puppet::params::puppet_server_service} on":
    onlyif => "/usr/bin/test `/sbin/chkconfig --list ${puppet::params::puppet_server_service} | /usr/bin/wc -l`"
  }

  service { $puppet::params::puppet_server_service:
    ensure => running,
    hasstatus => true,
    hasrestart => true,
    enable => true,
  }
}

