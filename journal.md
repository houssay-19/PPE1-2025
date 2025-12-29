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

## 10/11/2025
Aujourd'hui, j'ai converti le tableau .tsv en .html et j'en profite pour revenir sur ce que j'ai fait avant la semaine des vacances et du problème que j'ai rencrontré au moment du push  

- Pour aujourd'hui :
J’ai exporté mon tableau `resultats.numbers` en `.tsv`.
J’ai écrit un script Python pour convertir le TSV en HTML. Au départ j’avais fait le script sur textedit après plusieurs essais ça ne marchait pas donc finalement je l’ai fait sur VScodium et ça a fonctionné. 
J’ai généré avec succès mon fichier `resultats.html`.
J’ai supprimé du dépôt le fichier `.numbers` et j’ai poussé uniquement le `.html`.
J’ai créé un tag propre pour marquer cette version : `miniprojet-2`.

Tout fonctionne, et mon dépôt GitHub est enfin propre (juste quelques fichiers .DS_Store en trop que je n'ose pas supprimer, par peur que ça supprime tout encore une fois) 

- Retours sur les difficultés de la semaine dernière
J’ai eu beaucoup de difficultés aujourd’hui. Plusieurs fois, j’ai lancé mes scripts Python dans le mauvais dossier, ce qui provoquait des erreurs incompréhensibles. Je finissais par supprimer les fichiers et recommencer depuis le début, persuadée que le problème venait du script, alors que c’était juste le mauvais emplacement.
Au moment de faire mes git push, l’icône bleue avec une flèche blanche est apparue et je ne comprenais pas pourquoi mes modifications ne partaient pas sur GitHub. J’ai passé beaucoup de temps à essayer de comprendre ce qui n’allait pas, avec une bonne dose de frustration.
Le pire moment a été lorsque j’ai supprimé un dossier… mais pas seulement du dépôt GitHub : je l’ai aussi supprimé par erreur de mon mac. Tout avait disparu : le mini-projet, les scripts, le dossier Exercices. J’ai réussi à retrouver uniquement l’exercice 1. Le reste était perdu, et j’ai dû tout refaire depuis zéro. **Ce qui veut dire que mon dosssier Exercices apparaît comme si je l'avait fait au même moment que le mini projet1, mais par contre mes tags sont restés intactes ce qui veut dire qu'on voit quand même que j'ai pas commencé a faire mon github y'a 2 semaines**.
Avec le recul, j’ai compris une chose essentielle : Git ne pardonne pas les suppressions mal contrôlées, et travailler dans le bon dossier change tout. Cette expérience m’a appris à être beaucoup plus prudente, à vérifier où je suis avant d’exécuter un script, et à faire des commits réguliers pour sauvegarder mon travail.

- Ce que je fais maintenant
Maintenant, je pense à faire régulièrement des commits et des pushs, même si ce n’est pas fini.
Je fais une copie de sauvegarde sur une clé USB pour ne plus tout perdre et je fais aussi attention au format des fichiers avant de les ajouter dans un dépôt

## 15/11/2025 
Mini projet 3 
Aujourd’hui, j’ai encore eu des soucis avec Git. Quand j’ai voulu faire un git push, Git refusait et je ne comprenais pas pourquoi mes modifications ne partaient pas sur GitHub. Le message disait que le dépôt distant contenait des changements que je n’avais pas en local, ce qui m’a vraiment bloquée.
J’ai essayé de faire un git pull --rebase comme indiqué, mais Git m’a encore arrêtée parce que j’avais des modifications non enregistrées. J’étais un peu perdue : j’avais l’impression d’être coincée des deux côtés sans savoir quoi faire. Au début même le git push --force ne marchait pas, donc au final je suis allée sur mon GitHub et j'ai supprimé plusieurs fichiers DS_STORE et j'ai refais le git push et ça a marché!
Mais je ne comprends pas vraiment pourquoi ce problème revient à chaque, de plus la dernière fois que je vous avait présenter le problème, vous (M.Magistry) m'aviez dit que le problème ne devait plus réapparaître. 
Pour le reste du miniprojet 3 j'ai pas eu beaucoup de difficulté mais par manque de temps j'ai pas une belle mise en page de mon site internet. 

## projet de groupe PPE
Pendant les 2 séances dernières séance de PPE on a pu bien nous organiser et se mettre d'accord sur la manière dont nous allions travailler. Ça a été assez fluide en vérité. 
Pour les premiers jours sur les projet je n'ai rein d'intéressant à noter. 
# 28-29/12/2025
Aujourd’hui, j’ai travaillé sur la création des fichiers pals à partir des dumps et des contextes. Tout fonctionnait globalement bien, mais j’ai rencontré un problème technique avec la commande tr qui affichait des messages d’erreur du type Illegal byte sequence. Comme on travaille en groupe et que je suis la seule à être sur Mac, j’ai dû adapter le script pour qu’il soit compatible avec macOS. J’ai compris que c’était un problème d’encodage et qu’il fallait avoir le bon réflexe de forcer la locale pour éviter ce genre d’erreurs.
Même si le script produisait quand même un résultat, c'était pas "propre", donc j’ai corrigé le script pour qu’il fonctionne correctement sans warnings. Cette fois-ci, j’ai vraiment l’impression d’avoir retenu la leçon par rapport au mini-projet précédent : je vais plus vite, je comprends mieux les erreurs, et je sais comment les corriger sans paniquer.
Au début du projet, je n’avais pas grand-chose à écrire dans mon journal de bord parce que tout se passait bien et sans difficulté particulière. Mais maintenant, je me rends compte que ces petits problèmes techniques sont intéressants à analyser, surtout en travail de groupe et avec des environnements différents.

