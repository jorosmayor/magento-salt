magento_install:
  file.managed:
    - name: /var/magento.sh
    - makedirs: True
    - source: salt://magento/magento.sh
  cmd.run:
    - name: sh /var/magento.sh