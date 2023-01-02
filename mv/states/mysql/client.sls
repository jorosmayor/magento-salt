mysql_client_install:
  pkg.installed:
    - name: {{ pillar['mysql']['pkg_name_client'] }}