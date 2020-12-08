#Install
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

sudo dnf install -y php phpmyadmin vim code
sudo dnf install -y https://dev.mysql.com/get/mysql80-community-release-fc33-1.noarch.rpm
sudo dnf -y install mysql-community-server

#Start 
sudo systemctl start httpd
sudo systemctl start mysqld

#Config
password=$(sudo grep 'temporary password' /var/log/mysqld.log | awk '{print $13}')
mysqladmin --user=root --password="$password" password aaBB@@11


###################################

#Browser
firefox https://vault.bitwarden.com/ https://open.spotify.com/ https://github.com/login http://localhost/phpmyadmin &
