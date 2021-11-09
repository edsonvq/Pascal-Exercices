echo on
cls
echo.
echo Instalando DB
cd C:\xampp\mysql\bin\
mysql.exe -u root -proot -e lojaplus < LojaPlus.sql 
pause