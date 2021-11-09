@ECHO OFF 

odbcconf.exe /a {CONFIGDSN “MySQL ODBC 5.1 Driver” “DSN=lojaplus;Description=Loja;
SERVER=localhost;Trusted_Connection=No;Database=lojaplus;Port=3306;UID=root;PWD=root”} 

REM pause 
@CLS 
@EXIT