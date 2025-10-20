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
