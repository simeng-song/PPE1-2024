# Journal de bord du projet encadré

## Séance 1
Lors de la première séance, nous avons pris connaissance des bases d'Unix, du système de fichiers, ainsi que les commandes essentielles pour manipuler les fichiers. Les principaux thèmes abordés :

1.Introduction à Unix : 

Concept de système de fichiers : tout est fichier (les programmes, les périphériques et les dossiers).  

Philosophie Unix : Chacune des commandes Unix est conçue pour réaliser une tâche simple et précise et peut être combinée avec d'autres commandes pour accomplir des opérations plus complexes.

2.Structure du systèmes de fichiers :

Arborescence

Chemin absolus et relatifs

3. Commandes : 
`cd` : changer de dossier  
`ls` : lister des fichiers  
`pwd` : afficher le dossier actuel  
`mkdir` : créer un dossier  
`cat` : afficher le contenu  
`head` et `tail` : lire le début ou la fin d'un fichier  
`cp` : copier  
`mv` : déplacer  
`rm` : supprimer  
`cut` : sélectionner des colonnes spécifiques  
`grep` : rechercher dans un fichier  
`sort` : trier les lignes  
`uniq` : supprimer les doublons  

Exercice

les autres commandes utilisées :
`wget` : télécharger une archive zip  
`unzip` : extraire une archive  
`mv` : déplacer les fichiers manuellement  
`history` : afficher l'historique des commandes utilisées  

Afin de simplifier le processus de classement des fichiers, j'ai utilisé une boucle : 
```
for year in {2016..2018}; do
	for month in {01..12}; do
		mkdir -p txt/$year/$month
		mkdir -p ann/$year/$month
	done
done
```

## Séance 2
Lors de la deuxième séance, deux sujets essentiels ont été introduits : les commandes de Git et la gestion de dépôt sur GitHub. On a compris que Git est un outil outil de contrôle de version qui permey de gérer nos fichiers de manière efficace et structurée. De plus, on a appris à utiliser GitHub pour stocker et partager nos projets.

Les commandes essentielles en Git :

`git clone` : créer une copie locale d’un dépôt distant  
`git status` : vérifier l'état des fichiers et modifications  
`git add` : mettre en place (staging) les modifications  
`git commit` : enregistrer les modifications avec l'option -m pour indiquer le message  
`git push` et `git pull` : synchroniser les changements entre le dépôt local et le dépôt distant  
`git tag` : marquer un commit particulier

## Séance 3
Lors de l'exercice 2.a, j'ai rencontré un problème majeur. Après avoir filtré les fichiers de l'année 2018, de la même manière que pour les deux années précédentes, j'ai constaté que les résultats contenaient des noms de lieux et des entrées non pertinentes comme A7 et A9. Le défi était de supprimer ces numéros de routes tout en conservant les noms de lieux.
Pour résoudre ce problème, j'ai utilisé la commande `grep --help` et découvert l'option `-v`, qui permet d'exclure les lignes correspondant aux routes et de n'inclure que les noms de lieux valides dans le classement final.
