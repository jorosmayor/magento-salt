rabbitmq:
  pkg.installed:
    - name: rabbitmq-server
    - version: {{ pillar['version'] }}
  service.running:
    - name: rabbitmq-server
    - enable: True
  