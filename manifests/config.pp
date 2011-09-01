class mysqlproxy::config
{
  file{
    '/etc/default/mysql-proxy':
      owner   => root,
      group   => root,
      mode    => 644,
      content => template("mysqlproxy/default.erb");
  }
}
