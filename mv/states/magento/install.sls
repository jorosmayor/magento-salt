magento_install:
  file.managed:
    - name: /var/magento.sh
    - template: jinja
    - makedirs: True
    - source: salt://magento/magento.sh
  cmd.run:
    - name: sh /var/magento.sh