# == Class: puppet::service
#
# Manages the puppet master service.
#
# === Parameters
#
# [*puppet_server_service*]
#   The name of the registered puppet master service.
#
class puppet::service inherits puppet::params {
  service { $puppet::params::puppet_server_name:
    ensure => running,
    hasstatus => true,
    hasrestart => true,
    enable => true,
  }
}

