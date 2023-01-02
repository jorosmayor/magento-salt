mysql-user:
  mysql_user.present:
    - name: {{ mysql_user }}
    - password: {{ mysql_pass }}
    - connection_user: {{ user_root }}
    - connection_pass: {{ pass_root }}
  mysql_grants.present:
    - database: {{ mysql_database }}.*
    - grant: {{ mysql_grants }}
    - user: {{ mysql_user }}
    - connection_user: {{ mysql_root }}
    - connection_pass: {{ mysql_pass_root }}