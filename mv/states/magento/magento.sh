{% set magento = ['/srv/pillar']%}
composer create-project --repository-url=https://repo.magento.com/ magento/project-community-edition={{ pillar['magento']['version'] }} /var/www/html/

cd /var/www/html
find var generated vendor pub/static pub/media app/etc -type f -exec chmod g+w {} +
find var generated vendor pub/static pub/media app/etc -type d -exec chmod g+ws {} +
chown -R :www-data .
chmod u+x bin/magento
bin/magento setup:install --db-host={{ pillar['magento']['db-host'] }} \
  --db-name={{ pillar['mysql']['database'] }}\
  --db-user={{ pillar['mysql']['user'] }} \
  --db-password={{ pillar['mysql']['pass'] }} \
  --base-url=http://{{ pillar['vagrant']['ip'] }} \
  --admin-firstname={{ pillar['magento']['admin']['name'] }} \
  --admin-lastname={{ pillar['magento']['admin']['lastname'] }} \
  --admin-email={{ pillar['magento']['admin']['email'] }} \
  --admin-user={{ pillar['magento']['admin']['user'] }} \
  --admin-password={{ pillar['magento']['admin']['password'] }} \
  --language={{ pillar['magento']['language'] }} \
  --currency={{ pillar['magento']['currency'] }} \
  --use-rewrites=1 \
  --use-secure=1 \
  --use-secure-admin=1 \
  --timezone={{ pillar['magento']['timezone'] }} \
  --elasticsearch-host={{ pillar['magento']['elastic']['host'] }} \
  --elasticsearch-port={{ pillar['magento']['elastic']['port'] }} \
  --amqp-host="{{ pillar['magento']['amqp']['host'] }}" \
  --amqp-port="{{ pillar['magento']['amqp']['port'] }}" \
  --amqp-user="guest"\
  --amqp-password="guest" \
  --amqp-virtualhost="/"

sudo bin/magento setup:config:set --cache-backend=redis --cache-backend-redis-server={{ pillar['magento']['redis-host'] }} --cache-backend-redis-db=0
sudo bin/magento setup:config:set --page-cache=redis --page-cache-redis-server={{ pillar['magento']['redis-host'] }} --page-cache-redis-db=1

sudo cp /root/.composer/auth.json /var/www/html/var/composer_home/
sudo bin/magento sampledata:deploy

sudo bin/magento setup:upgrade
sudo bin/magento cache:flush