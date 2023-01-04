composer create-project --repository-url=https://repo.magento.com/ magento/project-community-edition={{ pillar['magento']['version'] }} /var/www/html/

cd /var/www/html
find var generated vendor pub/static pub/media app/etc -type f -exec chmod g+w {} +
find var generated vendor pub/static pub/media app/etc -type d -exec chmod g+ws {} +
chown -R :www-data .
chmod u+x bin/magento
bin/magento setup:install --db-host=bbdd_magento \
  --db-name=magento\
  --db-user=magento \
  --db-password=magento \
  --base-url=http://192.168.56.3/ \
  --admin-firstname=Jordi \
  --admin-lastname=Ros \
  --admin-email=jordiros@onestic.com \
  --admin-user=adminjordi \
  --admin-password='admin123' \
  --language=es_ES \
  --currency=EUR \
  --use-rewrites=1 \
  --use-secure=1 \
  --use-secure-admin=1 \
  --timezone=Europe/Madrid \
  --elasticsearch-host=es_magento \
  --elasticsearch-port=9200 \
  --amqp-host=rabbit_magento \
  --amqp-port=5672 \
  --amqp-user=guest \
  --amqp-password=guest

sudo bin/magento setup:config:set --cache-backend=redis --cache-backend-redis-server={{ pillar['magento']['redis-host'] }} --cache-backend-redis-db=0
sudo bin/magento setup:config:set --page-cache=redis --page-cache-redis-server={{ pillar['magento']['redis-host'] }} --page-cache-redis-db=1

sudo cp /root/.composer/auth.json /var/www/html/var/composer_home/
sudo bin/magento sampledata:deploy

sudo bin/magento setup:upgrade
sudo bin/magento cache:flush