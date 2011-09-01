class mysqlproxy::install
{
  package{
    'mysql-proxy':
      ensure => installed;
  }
}
