@echo off
set DB_NAME=dbfriends
set DB_USER=root
set DB_PASSWORD=

rem timestamp mit powershell!
for /f %%i in ('powershell -NoProfile -Command "Get-Date -Format yyyy-MM-dd-HH-mm-ss"') do set TIMESTAMP=%%i

rem Achtung: Damit das funktioniert muss der MySQL-Server laufen!!!
rem Hier den Pfad zu eurem mysql\bin-Ordner nehmen
set MYSQLDUMP=F:\_schule2026\_wids3bk_2\xampp\mysql\bin\mysqldump.exe
rem Der Output-Ordner sollte in eurem Projekt (git-repo) liegen!!!
set output=F:\_schule2026\_wids3bk_2\dump.sql

"%MYSQLDUMP%" -u %DB_USER% --databases %DB_NAME% --routines --triggers --events >  %output%

echo Datenbank wurde nach %output% exportiert.
pause