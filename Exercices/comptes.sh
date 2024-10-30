#!/usr/bin/bash

for year in {2016..2018}; do
    comptes=$(grep -c 'Location' ~/PPE1/archive-7/$year/*.ann | wc -l)
    echo "Annotations en $year : $comptes"
done

git add ~/PPE1/PPE1-2024/Exercices/comptes.sh
git commit -m "Ajout du script comptes.sh"
git push origin main


