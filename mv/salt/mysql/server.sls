mysql_debconf_install:
  pkg.installed:
    - name: debconf

mysql_debconf_utils:
  pkg.installed:
    - name: debconf-utils

mysql_server_install:
  pkg.installed:
    - name: mysql-server

mysql_debconf_settings:
  debconf.set:
    - name: mysql-server
    - data:
        'mysql-server/root_password': {'type': 'password', 'value': 'root'}
        'mysql-server/root_password_again': {'type': 'password', 'value': 'root'}
    - require:
      - pkg: debconf
    - require_in:
      - mysql_server_install
