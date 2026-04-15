

## 📌 Projektüberblick

Ihr entwickelt in 2er-Teams (bzw. evtl. 1 3er-Team) eine Webanwendung mit:

- Java
- Spring Boot
- MariaDB
- Thymeleaf
- GitHub (Classroom)

Ziel ist eine vollständige Anwendung mit Datenbank, Benutzeroberfläche und grafischer Auswertung.

# 🎯 Anforderungen

## 🔧 Technologie
- Spring Boot
- MariaDB
- Thymeleaf
- Bootstrap
- GitHub Classroom

## 🗄️ Datenmodell (Pflicht)

Euer Projekt muss enthalten:

- mindestens **4 Entities**
- **2 × 1:n Beziehungen**
- **1 × m:n Beziehung**



## 🔗 Beziehungen (verpflichtend)

### 1:n Beziehungen (je Schüler eine)

- Schüler A → 1:n Beziehung #1
- Schüler B → 1:n Beziehung #2
- (eventuell Schüler C → 1:n Beziehung #3)

### m:n Beziehung (gemeinsam)

- Schüler gemeinsam umsetzen



## ⚙️ Funktionale Anforderungen

Die Anwendung muss können:

- Datensätze anzeigen
- Datensätze erstellen
- Datensätze bearbeiten
- Datensätze löschen
- Daten suchen oder filtern
- Beziehungen korrekt darstellen (nicht nur IDs!)



## 📊 Grafische Darstellung

Mindestens ein Diagramm mit echten Daten:

Beispiele:
- Anzahl pro Kategorie
- Durchschnittswerte
- Entwicklung über Zeit

👉 Daten müssen aus **mindestens 2 Bereichen** stammen


# 👨‍💻 Arbeitsteilung

## 🧑‍🎓 Schüler A/B (eventuell C)
- 1:n Beziehung
- Entities
- Repository
- Controller
- CRUD
- Validierung

## 🤝 Gemeinsam
- m:n Beziehung
- Validierung
- Integration
- Diagramm
- Navigation



# 🧪 Technische Umsetzung

## 1:n Beziehung
- `@ManyToOne`
- optional `@OneToMany`
- Dropdown im Formular

## m:n Beziehung
- `@ManyToMany`
- optional: Join-Entity (Bonus)



# 🗂️ GitHub-Regeln

- regelmäßige Commits
- sinnvolle Commit-Nachrichten
- beide Schüler müssen sichtbar beitragen

### Gute Commit-Beispiele:
- `Entity Film erstellt`
- `CRUD für Bewertung ergänzt`
- `Diagramm implementiert`



# 📁 Dokumentation mit Obsidian

## 📂 Ordnerstruktur im Repository

```markdown
/docs
│
├── 00_Start.md
├── 01_Projektidee.md
├── 02_Datenmodell.md
├── 03_Architektur.md
├── 04_Umsetzung.md
├── 05_Diagramme.md
├── 06_Teamarbeit.md
├── 07_Reflexion.md
└── assets/
```

> Das heißt, der Ordner `docs` soll mit Obsidian zu öffnen sein. 


## 🟢 00_Start.md
```markdown
# Projekt: [Name]

## Team
- Schüler A
- Schüler B
- (Schüler C)

## Kurzbeschreibung
[2–3 Sätze]

## Navigation
- [[01_Projektidee]]
- [[02_Datenmodell]]
- [[03_Architektur]]
- [[04_Umsetzung]]
- [[05_Diagramme]]
- [[06_Teamarbeit]]
- [[07_Reflexion]]
````



## 💡 01_Projektidee.md

* Ziel der Anwendung
* Zielgruppe
* Hauptfunktionen



## 🗄️ 02_Datenmodell.md

* Entities
* Beziehungen (1:n, m:n)
* ER-Diagramm (Screenshot aus MySQL-Workbench bzw. erste Skizze auch händisch oder per Mermaid)


## 🏗️ 03_Architektur.md

* Aufbau (Controller, Repository, Entity)
* Technologien
* Besonderheiten



## ⚙️ 04_Umsetzung.md

* Bereich Schüler A
* Bereich Schüler B
* m:n Umsetzung
* Screenshots



## 📊 05_Diagramme.md

* Beschreibung
* Datenquelle
* Diagramm
* Erkenntnisse



## 👥 06_Teamarbeit.md

* Aufgabenverteilung
* Zusammenarbeit
* GitHub-Nutzung



## 🔍 07_Reflexion.md

* Was lief gut?
* Was war schwierig?
* Was wurde gelernt?



## 🖼️ assets-Ordner

* ER-Diagramm
* Screenshots
* Diagramme

Einbindung:

```markdown
![[assets/bild.png]]
```



## 📏 Dokumentationsregeln

* kurze Texte (keine Romane)
* Aufzählungen erlaubt
* Screenshots verwenden
* jede Datei muss vorhanden sein



# 📦 Abgabe

## 1. GitHub Repository

* vollständiger Code
* funktionierende Anwendung
* saubere Struktur

## 2. Dokumentation (`/docs`)

* vollständig ausgefüllt
* verständlich

## 3. README.md

* Projektbeschreibung
* Technologien
* Startanleitung

## 4. Präsentation

* Projektidee
* Datenmodell
* Funktionen
* Diagramm
* Live-Demo

# 📋 Checkliste

* [ ] 4 (bzw. 5) Entities vorhanden (+ 1 Zwischentabelle)
* [ ] 2 × 1:n Beziehungen
* [ ] 1 × m:n Beziehung
* [ ] CRUD umgesetzt
* [ ] Suche/Filter vorhanden
* [ ] Diagramm vorhanden
* [ ] GitHub aktiv genutzt
* [ ] Dokumentation vollständig
* [ ] Präsentation vorbereitet

