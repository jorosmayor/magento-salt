magento_install:
  file.managed:
    - name: /var/magento.sh
    - makedirs: True
    - source: salt://states/magento/magento.sh
  cmd.run:
    - name: sh /var/magento.sh