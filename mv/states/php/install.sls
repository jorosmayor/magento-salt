{%- from "../map.jinja" import php_versions -%}
php-fpm:
  pkg.installed:
    - pkgs:
      {%- for package in php.packages -%}
      - '{{ package }}'
      {% endfor %}
  service.running:
    - name: php8.1-fpm
    - enable: True