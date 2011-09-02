class mysqlproxy::install
{
  package{
    'mysql-proxy':
      ensure => installed;
  }
  file {
    "/etc/mysql-proxy":
      owner  => root,
      group  => root,
      mode   => 755, 
      ensure => directory;
    "/etc/mysql-proxy/lua.d":
      owner   => root,
      group   => root,
      mode    => 0644,
      recurse => true,
      purge   => true,
      source  => "puppet:///modules/mysqlproxy/lua.d",
      ensure  => directory;
  }
  if ($luascript !='')
  {
    file{
      "/etc/mysql-proxy/lua.d/${luascript}":
        owner   => root,
        group   => root,
        mode    => 644,
        source  => "puppet:///modules/mysqlproxy/lua.d/${luascript}";
    }
  }
}
