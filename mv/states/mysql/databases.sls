mysql-databases:
  mysql_database.present:
    - name: {{ database }}
    - connection_user: {{ user_root }}
    - connection_pass: {{ pass_root }}