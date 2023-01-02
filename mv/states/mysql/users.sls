mysql-user:
  mysql_user.present:
    - name: {{ pillar['mysql']['user'] }}
    - password: {{ pillar['mysql']['pass'] }}
    - connection_user: {{ pillar['root']['user'] }}
    - connection_pass: {{ pillar['root']['pass'] }}
  mysql_grants.present:
    - database: {{ pillar['mysql']['database'] }}.*
    - grant: {{ pillar['mysql']['grants'] }}
    - user: {{ pillar['mysql']['user'] }}
    - connection_user: {{ pillar['root']['user'] }}
    - connection_pass: {{ pillar['root']['pass'] }}