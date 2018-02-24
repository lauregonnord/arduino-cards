# Projet de jeu de carte "Arduino"

TODO

## Licence

Le présent projet est en licence Créative Commons BY-NC-SA 3.0, par
Laure GONNORD. Le projet initial est celui de Romuald Thion.

Vous devez créditer l'oeuvre, vous n'êtes pas autorisé à faire un usage commercial de cette oeuvre et de tout ou partie du matériel la composant. Dans le cas où vous effectuez un remix, que vous transformez, ou créez à partir du matériel composant l'oeuvre originale, vous devez diffuser l'oeuvre modifiée dans les même conditions.

https://creativecommons.org/licenses/by-nc-sa/3.0/fr/

## Dépendances

nodejs : https://nodejs.org/en/

(+pdflatex, rubber éventuellement)

## Howto rapide 

<pathto/> node build.js -d content-ardui.csv (dwl images)
puis (resize)
<pathto/> node build.js -d content-ardui.csv (dwl images)
puis
<pathto/> node build.js -g content-ardui.csv
puis
<pathto/> node build.js -1 content-ardui.csv
puis
make

### Modèle de carte LaTeX

Le modèle de carte LaTeX est adapté de celui de Arvid. Il utilise tikz, voir les fichiers [./latex/tikzcards.tex](./latex/tikzcards.tex) et [./latex/packages.tex](./latex/packages.tex)

 * https://tex.stackexchange.com/questions/47924/creating-playing-cards-using-tikz
 * https://tex.stackexchange.com/questions/243740/print-double-sided-playing-cards

L'adaptation "jeu de carte timeline informatique" a été réalisée par Romuald Thion pour la fête de la
science 2017 au département informatique de l'Université Claude
Bernard Lyon 1.


### Licences des contenus

 * les contenus textuels des cartes sont [sous licence CC BY-SA 3.0 de wikipedia](https://fr.wikipedia.org/wiki/Wikip%C3%A9dia:Citation_et_r%C3%A9utilisation_du_contenu_de_Wikip%C3%A9dia)
 * les images des cartes sont créditées individuellement (domaine public, CHM Timeline, Wikipedia etc.) dans les définitions des cartes

 
## Contenu et description des cartes
 
Les cartes sont créées à partir d'un fichier csv au format
id,type,arduino_type,title,picture,credits,description,credits_color.
 
 * *id* : le numéro de la carte, n'apparait pas sur la carte
 * *type* : sont type à choisir dans *capteur actionneur* (apparait
   verticalement sur la gauche de la carte)
 * *arduino_type* : arduino simple ou orion
 * *title* : le nom du capteur ou actionneur
 * *picture* : une url vers une image dans un format supporté par pdfLaTeX
 * *credits* : crédits de l'illustration (apparait au recto de la carte uniquement)
 * *description* : court texte (apparait au verso de la carte)
 * *credits_color* : couleur dans laquelle rendre les crédits de l'illustration
 
 
Le fichier `./content-ardui.csv` contient l'ensemble des cartes du jeu.
La carte des règles est gérée séparément, elle est décrite en dur dans le dépôt (fichiers [./deck/0_rules_front.tex](./deck/0_rules_front.tex) et  [./deck/0_rules_back.tex](./deck/0_rules_back.tex)).
 
## Génération des cartes

Le script javascript [build.js](build.js) va parser le fichier csv de description pour :

 - (-d) télécharger les images
 - (-r) les recadrer
 - (-g) générer les .tex des cartes individuelles (un .tex pour le recto, un .tex pour le verso)
 - (-1) générer le jeu de cartes avec une face par page
 - (-9) générer le jeu de cartes avec neuf faces par page
 
Exécuter `nodejs build.js --help` pour l'aide.

Ensuite, il faut compiler les fichiers .tex avec pdfLaTeX, voir le fichier [Makefile](./Makefile).

Le rendu final sera accessible un jour sur le ouaibe.
 
## Jeu de test

Le dossier [test_deck](test_deck) comprend quelques cartes de test, telles que générées à partir du csv. Elle servent à mettre au point ou modifier le fichier [./latex/tikzcards.tex](./latex/tikzcards.tex)


