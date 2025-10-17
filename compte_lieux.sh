#!/bin/bash

# Vérification du nombre d'arguments
if [ $# -ne 3 ]; then
    echo "Usage: $0 <année|*> <mois|*> <nombre_lieux>" >&2
    exit 1
fi

annee=$1
mois=$2
nb_lieux=$3

# Construction du chemin selon les arguments
if [ "$annee" = "*" ] && [ "$mois" = "*" ]; then
    # Tous les fichiers de toutes les années
    fichiers="ann/*/*/*.ann"
elif [ "$annee" = "*" ]; then
    # Toutes les années pour un mois donné
    fichiers="ann/*/$mois/*.ann"
elif [ "$mois" = "*" ]; then
    # Tous les mois d'une année donnée
    fichiers="ann/$annee/*/*.ann"
else
    # Année et mois spécifiques
    fichiers="ann/$annee/$mois/*.ann"
fi

# Extraction, comptage et classement des lieux
grep -h "^T" $fichiers 2>/dev/null | \
    grep "\sLocation\s" | \
    cut -f3 | \
    sort | \
    uniq -c | \
    sort -nr | \
    head -n $nb_lieux | \
    awk '{print $2"\t"$1}'
