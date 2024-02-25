# old-transfer
Ablage für Einzelkomponenten des "alten" Literaturarchivs als Grundlage für die Umstellung auf Docker

## Zu beachten bei der Portierung
- Die PHP-Dateien in Xataface sind bereits angepasst
- Keine PHP-Versionen > 7.1 verwenden, ab 7.2 gibt es komische Fehler mit "enumerate", ab 8.0 ist es völlig inkompatibel
- Keine XATAFACE-Versionen über 2.1.2 verwenden, die 2.5 haben bereits massive Darstellungsprobleme, ab 3.0 geht fast nichts mehr und die Doku ist unterirdisch
- Welche Freigaben im Root-FS nötig sind geht aus den Composefiles hervor, es sind aber rechnerspezifische Anpassungen nötig
- Der Verzeichnisverweis DOCKER_DATA ist im Global anzupassen

