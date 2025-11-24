#!/bin/bash

# Arrêter immédiatement le script en cas d'erreur
set -e

# Exécution de la création de la table utilisateur
if npm run dbcreateusertable; then
  echo "✅ Table utilisateur créée avec succès."
else
  echo "❌ Échec lors de la création de la table utilisateur." >&2
  exit 1
fi

# Exécution de la population des données dans la table
if npm run dbpopulatetable; then
  echo "✅ Table utilisateur peuplée avec succès."
else
  echo "❌ Échec lors de la population de la table utilisateur." >&2
  exit 1
fi

# Exécuter la commande définie par CMD dans le Dockerfile
exec "$@"
