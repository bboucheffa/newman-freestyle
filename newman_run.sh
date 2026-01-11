#!/bin/bash

set -e   # arrêter le script à la première erreur

# Vérification Node & npm 
node -v
npm -v

# Installation de Newman 
npm install -g newman
npm install newman newman-reporter-htmlextra --save-dev

# Lancement de Newman 
newman run CollectionRunner.postman_collection.json

# Génerer le rapport
newman run CollectionRunner.postman_collection.json -r htmlextra --reporter-htmlextra-export