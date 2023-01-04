nginx:
  version: '1.18.0*'
  conf:
    upstream fastcgi_backend:
      server: unix:/var/run/php/php8.1-fpm.sock
    server:
      listen: 80
      server_name: 192.168.56.3
      set $MAGE_ROOT: /var/www/html
      set $MAGE_DEBUG_SHOW_ARGS: 0
      include: /var/www/html/nginx.conf.sample