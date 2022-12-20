mysql:
  pkg.installed:
    - name: mysql-server
    - version: 8.0*
  service.running:
    - name: mysql
    - enable: True