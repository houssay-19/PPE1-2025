#!/usr/bin/env bash
# Script : comptes.sh
# Compte le nombre de lignes contenant "Location"
# dans les fichiers *.ann des sous-dossiers 2016, 2017 et 2018.

echo "Comptage des lignes contenant 'Location' :"

for annee in 2016 2017 2018
do
    # Compter les occurrences dans le sous-dossier correspondant
    nb=$(grep -r -c "Location" "$annee"/*.ann 2>/dev/null | awk -F: '{s+=$2} END {print s+0}')
    echo "$annee : $nb"
done
