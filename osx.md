# Installation de Jekyll sur Mac OS X

L'installation de Jekyll se fait en plusieurs étapes. Merci de les
suivre scrupuleusement dans l'ordre.

## Mise à jour de Mac OS X

Vérifiez votre version de Mac. Cliquez su la pomme en haut à gauche de l'écran,
puis sélectionnez "À propos de ce Mac". Vous devrier voir apparaître une fenêtre
d'information. Ce qui nous intéresse, c'est la version de Mac.

![](images/about-mac-menu.png)

![](images/about-mac.png)

Si votre numéro de version commence par **10.6**, **10.7** ou **10.8**, votre Mac
n'a pas la dernière version du système d'exploitation Apple, à savoir **Mavericks**.
Si le numéro de version commence par **10.9**, pouvez passer à l'étape suivante directement.

Vous pouvez le télécharger gratuitement sur [cette page](https://itunes.apple.com/fr/app/os-x-mavericks/id675248567?mt=12). Vous allez ouvrir l'App Store, et pouvoir télécharger
le logiciel. Il s'installera automatiquement (cela peut prendre plusieurs heures en
fonction de votre connexion Internet).

## Installation des outils de compilation

Ouvrez le terminal. N'ayez pas peur, c'est la fenêtre blanche avec écriture noire
par dessus. Vous pouvez y taper des commandes, faire Entrée, et l'ordinateur va exécuter
la commande que vous avez taper.

![](images/open-terminal.png)

Une fois le terminal ouvert, copiez-la ligne ci-dessous et appuyez sur Entrée :

```bash
xcode-select --install
```

Une fenêtre devrait s'ouvrir, Cliquez sur "Installer".

![](images/xcode-select-install.png)

Vous devez accepter la license, puis attendre que le téléchargement et
l'installation se termine (100 Mo environ).

## Installation de Jekyll

Attendez bien que l'étape précédente soit complétée. Si vous avez fermé le terminal, réouvrez-le.
Copiez la ligne ci dessous, collez-la dans le terminal et appuyez sur Entrée :

```bash
curl https://raw.githubusercontent.com/lewagon/install-jekyll/master/scripts/homebrew-ruby-jekyll.sh | bash
```

Le script va s'arrêter et vous demander un `Password:`. Il s'agit du mot de passe de votre Mac,
lorsque vous ouvrez votre session. Si vous tapez et vous ne voyez rien s'afficher,
**c'est normal**, votre Mac ne bug pas, il prend bien en compte les caractères. Appuyez
sur Entrée quand vous avez terminé de taper votre mot de passe.
Si vous n'avez pas de mot de passe de session, appuyez juste sur Entrée.

Attendez que le script se termine. Pour vérifier que c'est bon, tapez dans le terminal:

```bash
jekyll -v
```

Si le résultat est "jekyll 1.5.1" ou plus, bravo ! Vous êtes prêt à utiliser [jekyll](http://jekyllrb.com/).