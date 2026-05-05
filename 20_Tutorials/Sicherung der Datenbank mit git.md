## 💾 Datenbank sichern

Damit eure Datenbank auch im GitHub-Repository gespeichert ist, müsst ihr regelmäßig einen **Datenbank-Dump** erstellen.

Dafür stehen euch zwei Skripte zur Verfügung:

* `dump-db.bat` → **Batch-Skript (klassisch, einfach)**
* `dump-db.ps1` → **PowerShell-Skript (moderner, etwas robuster)**

---

## 🧠 Was ist das überhaupt?

* **Batch (.bat)**
  Ein einfaches Windows-Skript, das Befehle nacheinander ausführt (läuft per Doppelklick).

* **PowerShell (.ps1)**
  Eine moderne Skriptsprache von Windows mit mehr Möglichkeiten und besserer Fehlerbehandlung. (Rechte Maustaste - Mit Powershell ausführen)

👉 Ihr könnt **eines von beiden verwenden** – nehmt das, was bei euch funktioniert.

---

## ▶️ Verwendung

### Variante 1: Batch

```text
Doppelklick auf: scripts/dump-db.bat
```

### Variante 2: PowerShell

```powershell
./scripts/dump-db.ps1
```
oder mit rechter Maustaste auf der PowerShell-Datei und `Mit Powershell ausführen`

---

## 📦 Was passiert dabei?

* Eure Datenbank wird exportiert
* Es entsteht eine Datei (Name ist wie von euch festgelegt):

```text
docs/database/dump.sql
```

## ⚠️ Wichtig

* Der MySQL/MariaDB-Server (XAMPP) muss laufen!
* Vor **jedem Push** soll ein aktueller Dump erstellt werden, wenn ihr die Datenbank verändert habt

