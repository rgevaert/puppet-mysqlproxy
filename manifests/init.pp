# Class: mysqlproxy
#
# This module manages mysqlproxy
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
# [Remember: No empty lines between comments and class definition]
class mysqlproxy ($defaultenabled="true", $address='', $backends='', $luascript='', $options='', $adminaddress='', $adminusername='', $adminpassword='', $adminluascript='') {

  include install
  include config
  include service

  Class['mysqlproxy::install'] -> Class['mysqlproxy::config'] -> Class['mysqlproxy::service']
  Class['mysqlproxy::config'] ~> Class['mysqlproxy::service']
}
