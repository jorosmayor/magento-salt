php-fpm:
  pkg.installed:
    - pkgs:
      - php{{ pillar['version'] }}-fpm 
      - php{{ pillar['version'] }}-common 
      - php{{ pillar['version'] }}-mysql 
      - php{{ pillar['version'] }}-xml 
      - php{{ pillar['version'] }}-xmlrpc 
      - php{{ pillar['version'] }}-curl 
      - php{{ pillar['version'] }}-gd 
      - php{{ pillar['version'] }}-imagick 
      - php{{ pillar['version'] }}-cli 
      - php{{ pillar['version'] }}-dev 
      - php{{ pillar['version'] }}-imap 
      - php{{ pillar['version'] }}-mbstring 
      - php{{ pillar['version'] }}-opcache 
      - php{{ pillar['version'] }}-soap 
      - php{{ pillar['version'] }}-zip 
      - php{{ pillar['version'] }}-redis 
      - php{{ pillar['version'] }}-intl
      - php{{ pillar['version'] }}-bcmath
  service.running:
    - name: php{{ pillar['version'] }}-fpm
    - enable: True