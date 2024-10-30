# Journal de bord du projet encadré

## Séance 1


# Séance 2
Lors de la deuxième séance, deux sujets essentiels ont été introduits : les commandes de Git et la gestion de dépôt sur GitHub. On a compris que Git est un outil outil de contrôle de version qui permey de gérer nos fichiers de manière efficace et structurée. De plus, on a appris à utiliser GitHub pour stocker et partager nos projets.

Les commandes essentielles en Git :

`git clone` : créer une copie locale d’un dépôt distant

`git status` : vérifier l'état des fichiers et modifications

`git add` : mettre en place (staging) les modifications

`git commit` : enregistrer les modifications avec l'option -m pour indiquer le message

`git push` et `git pull` : synchroniser les changements entre le dépôt local et le dépôt distant

`git tag` : marquer un commit particulier


# Séance 3
Lors de l'exercice 2.a, j'ai rencontré un problème majeur. Après avoir filtré les fichiers de l'année 2018, de la même manière que pour les deux années précédentes, j'ai constaté que les résultats contenaient des noms de lieux et des entrées non pertinentes comme A7 et A9. Le défi était de supprimer ces numéros de routes tout en conservant les noms de lieux.
Pour résoudre ce problème, j'ai utilisé la commande `grep --help` et découvert l'option `-v`, qui permet d'exclure les lignes correspondant aux routes et de n'inclure que les noms de lieux valides dans le classement final.
