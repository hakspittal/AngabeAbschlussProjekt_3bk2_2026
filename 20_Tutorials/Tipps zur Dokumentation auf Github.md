## Richtige Verlinkung

1. Github benötigt als Links Standard Markdown-Links: `[Linktext](https://www.meinlink.at)`Wikilinks `[[Link zur Datei]]` funktionieren nicht!
2. Außerdem funktionieren die Links auch aus dem Grund nicht, da Obsidian standardmäßig die Pfade zu den verlinkten Dateien nicht angibt (z.B. eine Grafik info.jpg kann irgendwo im Vault liegen und wird trotzdem richtig verlinkt). In Github brauchen wir auch die Pfade

**Lösung zu 1.:**
In Obsidian in den Einstellungen beim Punkt ==Files and Links== die Option ==Use Wikilinks deaktivieren==

**Lösung zu 2.:**
Unter den gleichen Einstellungen die Option =="New Link Format"== auf =="Path from current File"== einstellen