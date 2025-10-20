#!/bin/bash

# En-tête du tableau
echo -e "Année\tNombre de lieux\tNombre d'entités"

# Boucle sur les années 2016, 2017, 2018
for annee in 2016 2017 2018; do
    # Compter les lieux (Location)
    nb_lieux=$(grep -h "^T" $annee/*.ann 2>/dev/null | grep -c "\sLocation\s")
    
    # Compter toutes les entités (lignes commençant par T)
    nb_entites=$(grep -h "^T" $annee/*.ann 2>/dev/null | wc -l)
    
    # Afficher les résultats
    echo -e "$annee\t$nb_lieux\t$nb_entites"
done
