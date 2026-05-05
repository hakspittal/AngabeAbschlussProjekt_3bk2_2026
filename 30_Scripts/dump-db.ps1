# Konfiguration
$DB_NAME = "legoshop"
$DB_USER = "root"
$DB_PASSWORD = ""

# Pfad zum Dump-Tool
$MYSQLDUMP = "F:\_schule2026\_wids3bk_2\xampp\mysql\bin\mysqldump.exe"

# Timestamp
$timestamp = Get-Date -Format "yyyy-MM-dd-HH-mm-ss"


# Output-Datei (im Git-Repo!)
$output = "F:\_schule2026\_abschlussProjekte\AngabeAbschlussProjekt_3bk2_2026\dump.sql"

Write-Host "Starte Datenbank-Dump..."

# Prüfen ob Tool existiert
if (!(Test-Path $MYSQLDUMP)) {
    Write-Host "FEHLER: mysqldump nicht gefunden unter $MYSQLDUMP" -ForegroundColor Red
    exit 1
}

# Dump ausführen
#& $MYSQLDUMP -u $DB_USER --default-character-set=utf8mb4 --databases $DB_NAME --routines --triggers --events | Out-File -Encoding utf8 $output

$cmd = "`"$MYSQLDUMP`" -u $DB_USER --databases $DB_NAME --routines --triggers --events > `"$output`""

cmd.exe /c $cmd

# Erfolg prüfen
if ($LASTEXITCODE -eq 0) {
    Write-Host "Datenbank wurde erfolgreich exportiert nach $output" -ForegroundColor Green
} else {
    Write-Host "FEHLER beim Export!" -ForegroundColor Red
}

Pause