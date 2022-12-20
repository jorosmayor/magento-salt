nginx:
  pkg.installed:
    - name: nginx
    - version: 1.18.0*
  service.running:
    - require:
      - pkg: nginx
    #- watch:
    #  - file: /etc/nginx/conf.d/default.conf

#/etc/nginx/conf.d/default.conf:
#  file.managed:
#    - source: salt://conf/default.conf
#    - user: root
#    - group: root
#    - mode: 644
#    - template: jinja