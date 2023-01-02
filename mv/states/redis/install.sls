redis:
  pkg.installed:
    - name: redis-server
    - version: {{ pillar['version'] }}
  service.running:
    - name: redis
    - enable: True