{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 #!/bin/bash\
\
if [ -z "$1" ]; then\
    echo "Erreur : veuillez fournir un fichier contenant les URLs."\
    exit 1\
fi\
\
if [ ! -f "$1" ]; then\
    echo "Erreur : le fichier $1 n'existe pas."\
    exit 1\
fi\
\
echo -e "Num\'e9ro\\tURL\\tCode HTTP\\tEncodage\\tNombre de mots"\
\
i=1\
while read -r url; do\
    if [ -z "$url" ]; then\
        continue\
    fi\
    \
    if [[ ! "$url" =~ ^http ]]; then\
        url="https://$url"\
    fi\
    \
    code=$(curl -o /dev/null -s -w "%\{http_code\}" "$url")\
    \
    encodage=$(curl -s -I "$url" | grep -i "content-type" | grep -oE "charset=[^;]*" | cut -d= -f2)\
    \
    if [ -z "$encodage" ]; then\
        encodage="N/A"\
    fi\
    \
    contenu=$(curl -s "$url")\
    nb_mots=$(echo "$contenu" | wc -w | tr -d ' ')\
    \
    echo -e "$\{i\}\\t$\{url\}\\t$\{code\}\\t$\{encodage\}\\t$\{nb_mots\}"\
    ((i++))\
done < "$1"}