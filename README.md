Class: puppet
-
Manages both puppet client and puppet master.
Class: puppet::config
-
Manages variables for both puppet client and puppet master.
Variables
+
 [*puppetmaster*]
   The fully qualified name of the puppet master.  In the case of a
   puppet client the name will be the clients master otherwise it is
   the masters name.  Used in puppet/etc_puppet_conf.erb.

Examples
=

  class { 'puppet::config' :
    config_hash => {
      'puppetmaster' => 'puppet.example.com'
    }
  }



