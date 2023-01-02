magento:
  mysql:
    database: 'magento'
    user: 'magento'
    pass: 'magento'
    grants: 'ALL PRIVILGES'
    user_root: 'root'
    pass_root: 'root'
  nginx:
    version: '1.18*'
    user_root: 'root'
    pass_root: 'root'
  php:
    version: '8.1'
    composer: '2.3'
  rabbitmq:
    version: '3.9*'
  redis:
    version: '5*'
  elastic:
    version: '7.x'
  
