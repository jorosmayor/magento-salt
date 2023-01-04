mysql_debconf_install:
  pkg.installed:
    - name: {{ pillar['mysql']['pkg_debconf'] }}

mysql_debconf_utils:
  pkg.installed:
    - name: {{ pillar['mysql']['pkg_debconf_utils'] }}

mysql_server_install:
  pkg.installed:
    - name: {{ pillar['mysql']['pkg_name_server'] }}
mysql_debconf_settings:
  debconf.set:
    - name: {{ pillar['mysql']['pkg_name_server'] }}
    - data:
        'mysql-server/root_password': {'type': 'password', 'value': '{{ pillar['root']['pass'] }}'}
        'mysql-server/root_password_again': {'type': 'password', 'value': '{{ pillar['root']['pass'] }}'}
    - require:
      - pkg: debconf
    - require_in:
      - {{ pillar['mysql']['pkg_name_server'] }}
