@echo off
rem START or STOP Apache Service
rem --------------------------------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

net start mediawikiApache
goto end

:stop

"C:/Bitnami/mediawiki-1.26.2-0/apache2\bin\httpd.exe" -n "mediawikiApache" -k stop

:end
exit
