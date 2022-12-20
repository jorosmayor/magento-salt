redis:
  pkg.installed:
    - name: redis-server
    - version: 5*
  service.running:
    - name: redis
    - enable: True