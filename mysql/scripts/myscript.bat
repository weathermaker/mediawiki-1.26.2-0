@echo off
"C:\Bitnami\mediawiki-1.26.2-0/mysql\bin\mysql.exe" --defaults-file="C:\Bitnami\mediawiki-1.26.2-0/mysql\my.ini" -u root -e "UPDATE mysql.user SET Password=password('%1') WHERE User='root';"
"C:\Bitnami\mediawiki-1.26.2-0/mysql\bin\mysql.exe" --defaults-file="C:\Bitnami\mediawiki-1.26.2-0/mysql\my.ini" -u root -e "DELETE FROM mysql.user WHERE User='';"
"C:\Bitnami\mediawiki-1.26.2-0/mysql\bin\mysql.exe" --defaults-file="C:\Bitnami\mediawiki-1.26.2-0/mysql\my.ini" -u root -e "FLUSH PRIVILEGES;"
