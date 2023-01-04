mysql:
  pkg_name_client: 'mysql-client'
  pkg_name_server: 'mysql-server'
  python: 'python3-mysqldb'
  pkg_debconf: 'debconf'
  pkg_debconf_utils: 'debconf-utils'
  database: 'magento'
  user: 'magento'
  pass: 'magento'
  grants: 'ALL PRIVILEGES'
  config:
    sections:
      mysqld_safe:
        socket: /var/run/mysqld/mysqld.sock
        nice: 0
      mysqld:
        user: mysql
        pid-file: /var/run/mysqld/mysqld.pid
        socket: /var/run/mysqld/mysqld.sock
        port: 3306
        basedir: /usr
        datadir: /var/lib/mysql
        tmpdir: /tmp
        lc-messages-dir: /usr/share/mysql
        key_buffer_size: 16M
        max_allowed_packet: 16M 
        thread_stack: 192K
        thread_cache_size: 8
        myisam-recover-options: BACKUP
        log_error: /var/log/mysql/error.log
        expire_logs_days: 10
        max_binlog_size: 100M