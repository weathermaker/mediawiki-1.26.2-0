@echo off
rem -- Check if argument is INSTALL or REMOVE

if not ""%1"" == ""INSTALL"" goto remove

"C:/Bitnami/mediawiki-1.26.2-0/apache2\bin\httpd.exe" -k install -n "mediawikiApache" -f "C:/Bitnami/mediawiki-1.26.2-0/apache2\conf\httpd.conf"

net start mediawikiApache >NUL
goto end

:remove
rem -- STOP SERVICE BEFORE REMOVING

net stop mediawikiApache >NUL
"C:/Bitnami/mediawiki-1.26.2-0/apache2\bin\httpd.exe" -k uninstall -n "mediawikiApache"

:end
exit
