php-fpm:
  pkg.installed:
    - pkgs:
    {% for package in pillar['php']['packages'] %}
      - "php{{ pillar['php']['version'] }}-{{ package }}"
    {% endfor %}
  service.running:
    - name: "php{{ pillar['php']['version'] }}-fpm"
    - enable: True