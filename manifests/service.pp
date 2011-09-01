class mysqlproxy::service
{
  service {
    'mysql-proxy':
      ensure    => running,
      hasstatus => true,
  }
}
