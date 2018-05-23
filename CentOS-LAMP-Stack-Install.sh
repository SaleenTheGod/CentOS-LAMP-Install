sudo yum -y install httpd
sudo systemctl start httpd.service
sudo systemctl enable httpd.service
sudo yum -y install mariadb-server mariadb
sudo systemctl start mariadb
sudo mysql_secure_installation
sudo systemctl enable mariadb.service
sudo yum -y install php php-mysql php-fpm php-gd
sudo systemctl restart httpd.service
echo "<?php phpinfo(); ?>" > /var/www/html/info.php
#sudo yum -y install php*

