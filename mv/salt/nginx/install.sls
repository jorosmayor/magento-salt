nginx:
  pkg.installed:
    - name: nginx
    - version: 1.18.0*
  file.managed:
    - name: /etc/nginx/conf.d/default.conf
    - source: salt://nginx/conf/default.conf
    - user: root
    - group: root
    - mode: 644
  service.running:
    - require:
      - pkg: nginx
    - watch:
      - file: /etc/nginx/conf.d/default.conf