rabbitmq:
  pkg.installed:
    - name: rabbitmq-server
    - version: {{ pillar['rabbit']['version'] }}
  service.running:
    - name: rabbitmq-server
    - enable: True
  