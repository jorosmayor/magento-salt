composer create-project --repository-url=https://repo.magento.com/ magento/project-community-edition=2.4.5p1 /var/www/html/

cd /var/www/html
find var generated vendor pub/static pub/media app/etc -type f -exec chmod g+w {} +
find var generated vendor pub/static pub/media app/etc -type d -exec chmod g+ws {} +
chown -R :www-data .
chmod u+x bin/magento
bin/magento setup:install {%for key, value in pillar['magento']['options'].items() %} --{{key}}={{value}}{%endfor%}

sudo bin/magento setup:config:set --cache-backend=redis --cache-backend-redis-server=localhost --cache-backend-redis-db=0
sudo bin/magento setup:config:set --page-cache=redis --page-cache-redis-server=localhost --page-cache-redis-db=1

sudo cp /root/.composer/auth.json /var/www/html/var/composer_home/
sudo bin/magento sampledata:deploy

sudo bin/magento setup:upgrade
sudo bin/magento cache:flush