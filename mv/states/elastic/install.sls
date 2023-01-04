elastic_pkg:
  pkg.installed:
    - name: elasticsearch
  file.managed:
    - name: /etc/elasticsearch/jvm.options
    - template: jinja
    - source: salt://elastic/conf/jvm.options
  service.running:
    - name: elasticsearch
    - enable: True
    - watch:
      - file: /etc/elasticsearch/jvm.options