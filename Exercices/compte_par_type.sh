#!/usr/bin/bash

year=$1
entity=$2

if [$# -ne 2]; then
	echo "Usage: $0 <année><type d'entité>"
	exit 1
fi

compte=$(grep -c "$entity" ~/PPE1/archive-7/$year/*.ann | wc -l)
echo "Nombre de $type en $year : $compte"