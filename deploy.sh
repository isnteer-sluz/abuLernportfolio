#!/bin/bash

# Hugo build
hugo

# Wechsle in public/
cd public

# Init Git (nur hier!)
git init
git remote add origin https://github.com/isnteer-sluz/abuLernportfolio.git
git checkout -b gh-pages

# Alles committen
git add .
git commit -m "Deploy Hugo site"

# Push auf gh-pages (force, weil separater Git in /public)
git push --force origin gh-pages

# Zurück ins Hauptverzeichnis
cd ..
