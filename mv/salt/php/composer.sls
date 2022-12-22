composer:
  environ.setenv:
    - name: variables
    - value: 
        COMPOSER_HOME: /root/.config/composer
        COMPOSER_ALLOW_SUPERUSER: '1'
    - update_minion: True
  file.managed:
    - name: /root/.config/composer/auth.json
    - makedirs: True
    - source: salt://php/conf/auth.json
  cmd.run: 
    - name: curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer