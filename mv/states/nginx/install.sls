nginx:
  pkg.installed:
    - name: nginx
    - version: {{ nginx_version }}
  file.managed:
    - name: /etc/nginx/conf.d/default.conf
    - source: salt://nginx/conf/default.conf
    - user: {{ user_root }}
    - group: {{ pass_root }}
    - mode: 644
  service.running:
    - require:
      - pkg: nginx
    - watch:
      - file: /etc/nginx/conf.d/default.conf