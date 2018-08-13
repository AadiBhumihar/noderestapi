
read rootpasswd
mysql -u root -p${rootpasswd} -e "CREATE USER 'username'@'localhost' IDENTIFIED BY 'password';"
mysql -u root -p${rootpasswd} -e "GRANT ALL PRIVILEGES ON * . * TO 'bhumihar'@'localhost';"
mysql -u root -p${rootpasswd} -e "FLUSH PRIVILEGES;"

mysql -u username -p${rootpasswd} -e "CREATE DATABASE Contact;"
mysql -u username -p${rootpasswd} Contact < contact_detail.sql
