mysql_server_config:
  file.managed:
    - name: /etc/mysql/my.cnf
    - makedirs: True
    - template: jinja
    - source: salt://mysql/conf/mysql.ini
    - require:
      - pkg: {{ pillar['mysql']['pkg_name_server'] }} 