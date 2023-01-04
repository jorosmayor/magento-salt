nginx:
  pkg.installed:
    - name: nginx
    - version: {{ pillar['nginx']['version'] }}
  file.managed:
    - name: /etc/nginx/conf.d/default.conf
    - source: salt://states/nginx/conf/default.conf
    - user: {{ pillar['root']['user'] }}
    - group: {{ pillar['root']['pass'] }}
    - mode: 644
  service.running:
    - require:
      - pkg: nginx
    - watch:
      - file: /etc/nginx/conf.d/default.conf