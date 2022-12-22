mysql-user:
  mysql_user.present:
    - name: magento
    - password: magento
    - connection_user: root
    - connection_pass: root
  mysql_grants.present:
    - database: magento.*
    - grant: ALL PRIVILEGES
    - user: magento
    - connection_user: root
    - connection_pass: root