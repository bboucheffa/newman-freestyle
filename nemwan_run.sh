#!/bin/bash

set -e   # arrêter le script à la première erreur

# Mise à jour du système
sudo apt-get update -y

# Installation de Node.js
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt-get install -y nodejs

# Vérification Node & npm 
node -v
npm -v

# Installation de Newman 
sudo npm install -g newman

# Lancement de Newman 
newman run collection.json