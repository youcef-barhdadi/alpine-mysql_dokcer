addgroup mysql mysql


if [[ ! -d /etc/lib/mysql ]]
then
	echo "Creating /etc/lib/mysq"
	mkdir /etc/lib/mysql

fi


chown mysql:mysql /etc/lib/mysql
mysql_install_db --user=mysql --datadir=/var/lib/mysql 

rc-status > /dev/null
touch /run/openrc/softlevel
rc-service mariadb start

