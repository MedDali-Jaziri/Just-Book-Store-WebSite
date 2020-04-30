echo "The permission for the script file"
chmod +x ScriptPrincipale.sh 

echo "The installation of apache2,mysql,php and update system"
sudo apt update
sudo apt upgrade
sudo apt install apache2
sudo apt install mysql-server
sudo apt install php libapache2-mod-php php-mysql
sudo apt install php7.2-mysql

echo "Create a user in mysql"
sudo mysql <<EOF
create user JustGroup identified by '123';
grant all privileges on *.* To JustGroup;
grant create on *.* To JustGroup;
EOF
echo "The creation of user success"

echo "Copy the file in the /var/www/html"
sudo cp -r JustBank /var/www/html
