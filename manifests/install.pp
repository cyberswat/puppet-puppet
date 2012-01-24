# == Class: puppet::install
#
# Installs the puppet client.
#
# === Parameters
#
# [*puppet_client_package*]
#   The name of the puppet client package that should be installed. eg puppet
#
class puppet::install inherits puppet::params {
  package { $puppet::params::puppet_client_package:
    ensure => present,
  }
}

