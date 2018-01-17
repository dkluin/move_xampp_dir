@echo off
set /p sSearchStr="Enter old XAMPP path: "
set /p sReplaceStr="Enter new XAMPP path: "

setlocal
set sSearchStrBack=%sSearchStr:/=\\%
set sReplaceStrBack=%sReplaceStr:/=\\%

powershell -Command "(gc 'apache/conf/httpd.conf') -replace '%sSearchStr%', '%sReplaceStr%' | Out-File 'apache/conf/httpd.conf' -Encoding ASCII"
powershell -Command "(gc 'apache/conf/extra/httpd-autoindex.conf') -replace '%sSearchStr%', '%sReplaceStr%' | Out-File 'apache/conf/extra/httpd-autoindex.conf' -Encoding ASCII"
powershell -Command "(gc 'apache/conf/extra/httpd-dav.conf') -replace '%sSearchStr%', '%sReplaceStr%' | Out-File 'apache/conf/extra/httpd-dav.conf' -Encoding ASCII"
powershell -Command "(gc 'apache/conf/extra/httpd-manual.conf') -replace '%sSearchStr%', '%sReplaceStr%' | Out-File 'apache/conf/extra/httpd-manual.conf' -Encoding ASCII"
powershell -Command "(gc 'apache/conf/extra/httpd-multilang-errordoc.conf') -replace '%sSearchStr%', '%sReplaceStr%' | Out-File 'apache/conf/extra/httpd-multilang-errordoc.conf' -Encoding ASCII"
powershell -Command "(gc 'apache/conf/extra/httpd-ssl.conf') -replace '%sSearchStr%', '%sReplaceStr%' | Out-File 'apache/conf/extra/httpd-ssl.conf' -Encoding ASCII"
powershell -Command "(gc 'apache/conf/extra/httpd-vhosts.conf') -replace '%sSearchStr%', '%sReplaceStr%' | Out-File 'apache/conf/extra/httpd-vhosts.conf' -Encoding ASCII"
powershell -Command "(gc 'apache/conf/extra/httpd-xampp.conf') -replace '%sSearchStr%', '%sReplaceStr%' | Out-File 'apache/conf/extra/httpd-xampp.conf' -Encoding ASCII"

powershell -Command "(gc 'mysql/bin/my.ini') -replace '%sSearchStr%', '%sReplaceStr%' | Out-File 'mysql/bin/my.ini' -Encoding ASCII"

powershell -Command "(gc 'php/php.ini') -replace '%sSearchStrBack%', '%sReplaceStrBack%' | Out-File 'php/php.ini' -Encoding ASCII"
pause