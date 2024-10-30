#!/usr/bin/bash

for year in {2016..2018}; do
    comptes=$(grep -c 'Location' ~/PPE1/archive-7/$year/*.ann | wc -l)
    echo "Annotations en $year : $comptes"
done