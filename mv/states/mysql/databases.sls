mysql-databases:
  mysql_database.present:
    - name: {{ pillar['mysql']['database'] }}
    - connection_user: {{ pillar['root']['user'] }}
    - connection_pass: {{ pillar['root']['pass'] }}