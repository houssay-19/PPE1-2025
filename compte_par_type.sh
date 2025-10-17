#!/bin/bash

# Vérification du nombre d'arguments
if [ $# -ne 2 ]; then
    echo "Usage: $0 <année> <type_entité>" >&2
    exit 1
fi

annee=$1
type=$2

# Vérification que le dossier de l'année existe
if [ ! -d "$annee" ]; then
    echo "Erreur: Le dossier $annee n'existe pas" >&2
    exit 1
fi

# Compter les occurrences du type d'entité dans tous les fichiers .ann de l'année
grep -h "^T" $annee/*.ann 2>/dev/null | grep -c "\s$type\s"
