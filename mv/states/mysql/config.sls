mysql_server_config:
  file.managed:
    - name: /etc/mysql/my.cnf
    - makedirs: True
    - source: salt://mysql/conf/mysqld.cnf
    - require:
      - pkg: mysql-server