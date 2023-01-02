redis:
  pkg.installed:
    - name: redis-server
    - version: {{ pillar['redis']['version'] }}
  service.running:
    - name: redis
    - enable: True