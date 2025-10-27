# Journal de bord du projet encadré --- DIALLO Houssaynatou

##pour le travail d’aujourd’hui sur git et la manipulation de fichiers, j'ai pu m'exercer avec quelques commandes que j'ai apprises en cours. 
Et j'ai appris à :
Cloner un dépôt avec ssh 
Naviguer dans les dossier à travers le terminal
Modifier des fichier localement
Utiliser les commandes git de base (add, pull, commit, push..)

## Le 11/10/2025 
- Pour les exercices 1 et 2 de scripts bash j'ai eu pas mal de difficultés. 
- Pour les précédents exercices j'avais eu quelques difficultés à gérer les chemins des dossiers surtout parce que les fichiers étaient rangés dans des sous-dossiers. Mais cette fois j'ai pu aller plus vite car je les maitrise mieux ce qui m'a fait gagner beaucoup de temps. 
- J’ai rencontré un problème avec le shebang (#!/usr/bin/bash), car ce chemin n'a pas fonctionné pour, ce n'est qu'après plusieurs essaie que je me suis rendu compte qu'il ne fonctionne pas sur macOS. J’ai appris qu’il fallait utiliser plutôt #!/bin/bash ou #!/usr/bin/env bash pour que le script fonctionne partout.
- J’ai aussi demandé un peu d’aide à une amie qui est en master d’informatique pour m’aider à corriger la logique du script. Grâce à cela, j’ai compris comment utiliser les commandes grep et awk pour faire des comptages automatiques dans plusieurs fichiers.
- Un autre apprentissage important que j’ai découvert c'est l’éditeur nano dans le terminal. Avant, j’ouvrais mes fichiers avec TextEdit, mais maintenant je sais que je peux créer et modifier mes scripts directement dans le terminal sans avoir besoin de changer d’application, ce qui est beaucoup plus pratique.

## Le 18/10/2025 
Exercice 4 Boucles : 
Le script bash de la dernière diapo permet de vérifier si les lignes d'un fichier contiennent des URLs valides ou non.
Le script commence par une ligne shebang (#!/usr/bin/bash) qui indique quoi utiliser donc ici c'est Bash. Ensuite, il vérifie qu’on a bien passé un argument au moment de lancer le script et s'il n'y a pas d'arguments il affiche un message d'erreur et s'arrête grâce à "exit". 
On a ensuite deux compteurs initialisé avec OK =0 NOK =0, ils vont servir à compter le nombre de lignes valides et non valides.
Le script lit ensuite chaque ligne du fichier avec une boucle while read -r LINE. Et pour chaque ligne : Il vérifie si la ligne ressemble à une URL grâce à une expression régulière ("https?://" ou "http://").
Et pour finir si oui, il affiche : "ressemble à une URL valide". Et sinon, il affiche : "ne ressemble pas à une URL valide". 

## 23-27/10/2025
Après le cours j'ai repris les diapos pour bien comprendre ce qui a été dit. Et j'ai ensuite commencé le mini projet 
.Exercice 1  
Réponses : 
- question 1 : on utilise pas cat pour gagner du temps et pas rajouter un processus supplémentaires. Comme ça on évite de perdre des variables une fois qu'une boucle est terminé et donc les variables qui ont été définies ou modifiées à l'intérieur de la boucle seront conservées et accessibles à la fin. 
- question 2 : Pour transformer "urls/fr.txt" en paramètre du script, on utilise un argument.
Le fichier devient alors $1, le premier argument passé au script.
- 2.1 : On ajoute un test pour vérifier qu’un argument a bien été fourni. Sinon, le script affiche un message d’erreur et s’arrête : 
if [ -n "$1" ]; then
    echo "Argument fourni : $1"
else
    echo "Erreur : aucun argument donné."
    exit 1
fi
- question 3 : Pour numéroter les lignes, on utilise une variable de compteur que l'on initialise et incrémente à chaque passage dans la boucle. On utilise ensuite l'option -e de echo pour interpréter la tabulation (\t). 
i=1
while read -r line; do
    echo -e "${i}\t${line}"
    ((i++))
done < "$1"
Explications : On initialise un compteur i à 1 avant la boucle. À chaque ligne lue, on affiche le numéro suivi d’une tabulation et de l’URL (echo -e "${i}\t${line}"), puis on incrémente i. Le \t permet de séparer proprement les valeurs par des tabulations sur la même ligne.

- 
Cette première partie du mini projet m'a paru assez accessible, je pensais que j'allais mettre beaucoup plus de temps mais finalement le fait d'avoir repris les diapos avant c'avoir commencé le mini projet m'a beaucoup aidé. Pour le rendu des réponses aux questions j'ai hésité entre faire un nouveau fichier, répondre dans le fichiers script directement ou juste le faire dans mon journal, mais finalement j'ai choisi la dernière option car me je me suis dit que je pouvais mieux l'expliquer ici et comme ça mon fichier script sera plus "propre". 

.Exercice 2 
Pour cet exercice j'ai eu un peu plus de mal et j'ai mis beaucoup plus de temps, la première difficulté était que je n'avais pas bien compris les consignes. Et j'ai aussi fait plusieurs version de mon script et modifié plusieurs paramètres. Mais dans cet exercice, j’ai appris à automatiser le traitement d’un ensemble d’URLs à l’aide d’un script bash. 
J’ai utilisé la commande curl pour interroger les sites web. L’option -w "%{http_code}" ici permet d’obtenir le code de statut HTTP et l’entête Content-Type sert à extraire le type d’encodage (charset=UTF-8, par exemple).
Le contenu complet de la page est ensuite téléchargé et analysé avec wc -w pour compter le nombre de mots. Toutes les informations sont affichées sur une seule ligne, séparées par des tabulations, ce qui facilite la lecture et le traitement automatique des résultats.
Cet exercice m’a permis de mieux comprendre comment lire un fichier ligne par ligne en Bash, comment extraire des informations web avec curl, et comment structurer une sortie de données de manière claire et exploitable.

