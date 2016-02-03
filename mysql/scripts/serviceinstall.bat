@echo off
rem -- Check if argument is INSTALL or REMOVE

if not ""%1"" == ""INSTALL"" goto remove

"C:\Bitnami\mediawiki-1.26.2-0/mysql\bin\mysqld.exe" --install "mediawikiMySQL" --defaults-file="C:\Bitnami\mediawiki-1.26.2-0/mysql\my.ini"

net start "mediawikiMySQL" >NUL
goto end

:remove
rem -- STOP SERVICES BEFORE REMOVING

net stop "mediawikiMySQL" >NUL
"C:\Bitnami\mediawiki-1.26.2-0/mysql\bin\mysqld.exe" --remove "mediawikiMySQL"

:end
exit
