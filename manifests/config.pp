# == Class: puppet::config
#
# Manages variables for both puppet client and puppet master.
#
# === Variables
#
# [*puppetmaster*]
#   The fully qualified name of the puppet master.  In the case of a
#   puppet client the name will be the clients master otherwise it is
#   the masters name.  Used in puppet/etc_puppet_conf.erb.
#
# === Examples
#
#  class { 'puppet::config' :
#    config => {
#      'puppetmaster' => 'puppet.example.com'
#    }
#  }
#
#
class puppet::config(
  $conf  = {}
) inherits puppet::params {

  file { $puppet::params::puppet_config:
    ensure => present,
    owner => 'root',
    group => 'root',
    mode => 0644,
    content => template("puppet/etc_puppet_conf.erb"),
    require => Class["puppet::install"],
  }

}

