
#!/bin/bash

# Vérification du nombre d'arguments
if [ $# -ne 2 ]; then
    echo "Usage: $0 <année> <type_entité>" >&2
    exit 1
fi

annee=$1
type=$2

# Validation de l'année (doit être un nombre de 4 chiffres)
if ! [[ "$annee" =~ ^[0-9]{4}$ ]]; then
    echo "Erreur: L'année doit être un nombre de 4 chiffres" >&2
    exit 1
fi

# Vérification que le dossier de l'année existe
if [ ! -d "ann/$annee" ]; then
    echo "Erreur: Le dossier ann/$annee n'existe pas" >&2
    exit 1
fi

# Validation du type d'entité (première lettre en majuscule)
if ! [[ "$type" =~ ^[A-Z][a-zA-Z]* ]]; then
    echo "Erreur: Le type d'entité doit commencer par une majuscule" >&2
    exit 1
fi

# Compter les occurrences du type d'entité dans tous les fichiers .ann de l'année
grep -h "^T" ann/$annee/*.ann 2>/dev/null | grep -c "\s$type\s"
