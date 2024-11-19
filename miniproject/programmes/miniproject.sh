#!/usr/bin/bash

if [ $# -ne 1 ]; then
    echo "Erreur : Veuillez spécifier un fichier en argument."
    exit 1
fi

file=$1
output_file="/Users/songsimeng/PPE1/PPE1-2024/miniproject/tableaux/tableaux-fr.html"

echo -e "
<!DOCTYPE html>
<html lang="fr">
<head>
	<title>Tableau URL</title>
	<meta charset="UTF-8">
</head>
<body>
	<table border="1">
		<tr>
			<th>Numéro de ligne</th>
			<th>URL</th>
			<th>Code HTTP</th>
			<th>Encodage</th>
			<th>Nombre de mots</th>
		</tr>" > "$output_file"

LineNumber=1
while read -r line;
do	
	code_http=$(curl -s -I -L -w "%{http_code}" -o /dev/null "$line")
	encoding=$(curl -s -I -L -w "%{content_type}" -o /dev/null "$line" | egrep -o "charset=\S+" | cut -d "=" -f2)
	if [ -z "$encoding" ]; then
		encoding="Absent"
	fi
	word_count=$(lynx -dump -nolist "$line" | wc -w)
	
	echo -e "
		<tr>
			<td>${LineNumber}</td>
			<td>${line}</td>
			<td>${code_http}</td>
			<td>${encoding}</td>
			<td>${word_count}</td>
		</tr>" >> "$output_file"
	((LineNumber++))
done < "$file"
echo -e "
	</table>
</body>
</html>" >> "$output_file"
