#!/bin/bash

# Vérification du nombre d'arguments
if [ $# -ne 1 ]; then
    echo "Usage: $0 <type_entité>" >&2
    exit 1
fi

type=$1

# En-tête du tableau
echo -e "Année\tNombre d'entités $type"

# Boucle sur les trois années
for annee in 2016 2017 2018; do
    # Appel du script compte_par_type.sh pour chaque année
    nombre=$(./compte_par_type.sh $annee $type)
    echo -e "$annee\t$nombre"
done
