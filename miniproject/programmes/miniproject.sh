#!/usr/bin/bash

if [ -z "$1" ]; then
    echo "Erreur : Veuillez spécifier un fichier en argument."
    exit 1
fi

output_file="/Users/songsimeng/PPE1/PPE1-2024/miniproject/tableaux/tableaux-fr.tsv"

echo -e "Numéro de ligne\tURL\tCode HTTP\tEncodage\tNombre de mots" > "$output_file"

LineNumber=1

while read -r url; do
	code_http=$(curl -o /dev/null -s -w "%{http_code}" "$url")
	content=$(curl -s "$url")
	encoding=$(echo "$content" | file -i - | awk -F "=" '{print $2}')
	
	if [ -z "$encoding" ]; then
    encoding="Indéfini"  
	fi

	word_count=$(echo "$content" | wc -w)
	
	echo -e "${LineNumber}\t${url}\t${code_http}\t${encoding}\t${word_count}" >> "$output_file"
	echo -e "${LineNumber}\t${url}\t${code_http}\t${encoding}\t${word_count}"	
	((LineNumber++))
	
done < "$1"
