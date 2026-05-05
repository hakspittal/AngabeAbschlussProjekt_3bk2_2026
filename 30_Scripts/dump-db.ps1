# Konfiguration
$DB_NAME = "dbfriends"
$DB_USER = "root"
$DB_PASSWORD = ""

# Pfad zum Dump-Tool
$MYSQLDUMP = "F:\_schule2026\_wids3bk_2\xampp\mysql\bin\mysqldump.exe"

# Timestamp
$timestamp = Get-Date -Format "yyyy-MM-dd-HH-mm-ss"


# Output-Datei (im Git-Repo!)
$output = "F:\_schule2026\_wids3bk_2\dump-$timestamp.sql"

Write-Host "Starte Datenbank-Dump..."

# Prüfen ob Tool existiert
if (!(Test-Path $MYSQLDUMP)) {
    Write-Host "FEHLER: mysqldump nicht gefunden unter $MYSQLDUMP" -ForegroundColor Red
    exit 1
}

# Dump ausführen
& $MYSQLDUMP -u $DB_USER --databases $DB_NAME --routines --triggers --events | Out-File -Encoding utf8 $output

# Erfolg prüfen
if ($LASTEXITCODE -eq 0) {
    Write-Host "Datenbank wurde erfolgreich exportiert nach $output" -ForegroundColor Green
} else {
    Write-Host "FEHLER beim Export!" -ForegroundColor Red
}

Pause