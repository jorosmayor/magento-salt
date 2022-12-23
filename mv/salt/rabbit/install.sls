rabbitmq:
  pkg.installed:
    - name: rabbitmq-server
    - version: 3.9*
  service.running:
    - name: rabbitmq-server
    - enable: True

  rabbitmq_user.present:
    - name: magento
    - password: magento