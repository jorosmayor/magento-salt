php-fpm:
  pkg.installed:
    - pkgs:
    {% for package in pillar['php']['packages'] %}
      - "php{{ pillar['php']['version'] }}-{{ package }}"
    {% endfor %}
  service.running:
    - name: php8.1-fpm
    - enable: True