#!/bin/bash

# Hugo build
hugo

# In den public-Ordner wechseln
cd public

# Wenn kein Git-Repo vorhanden → initialisieren
if [ ! -d .git ]; then
  git init
  git remote add origin https://github.com/isnteer-sluz/abuLernportfolio.git
  git checkout -b gh-pages
else
  git checkout gh-pages
fi

# Commit & Push
git add .
git commit -m "Deploy Hugo site" || echo "🔄 Keine Änderungen zum Commit"
git push --force origin gh-pages

# Zurück ins Projektverzeichnis
cd ..
