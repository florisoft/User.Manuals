<img src="../../fslogo.png">

# Manuel Florisoft pour la gestion des versions d’applications

Avec l’application Florisoft Hub, vous gérez vos applications Florisoft. Cela inclut le lancement, le téléchargement, la mise à jour et la suppression des applications via l’application Hub. Ce manuel vous guide dans le suivi et le test des applications.

Pour pouvoir tester les fonctionnalités décrites dans ce manuel, vous devez disposer d’un terminal avec l’application Hub installée. Si vous avez un terminal mais que l’application Hub n’est pas encore installée, lisez [ici](https://github.com/florisoft/User.Manuals/blob/main/CLOUD%20APPLICATIONS/Hub%20App/Hub-App%20Installatie%20NL.md#installeren-van-de-android-app) comment l’installer.

## Gestion des versions

Dans le catalogue de l’application Hub, le numéro de version s’affiche verticalement à côté des applications. Florisoft publie régulièrement de nouvelles versions avec des fonctionnalités supplémentaires et de petites améliorations. Ce numéro de version vous permet de savoir facilement quelle version vous utilisez.

*Lors de la prise de contact avec le support Florisoft en cas de problème, il est conseillé d’avoir ces numéros de version sous la main.*

## Télécharger les mises à jour d’applications

Les applications sont téléchargées lors de la mise à jour du serveur cloud. Lors de la mise à jour, vous verrez que le paramètre "*Télécharger les applications frontales avec Cloud.Server*" est activé. Ce paramètre garantit que les nouvelles versions d’applications sont disponibles dans le catalogue de l’application Hub après la mise à jour du serveur cloud.

|Étape|Explication|
|:-:|:--|
|**1**|Mise à jour du serveur cloud via Florisoft.<details><summary><b>Cliquez ici pour un exemple !</b></summary><img src="Media/App Management/2.png"></details>|
|**2**|Téléchargement des applications frontales.<details><summary><b>Cliquez ici pour un exemple !</b></summary><img src="Media/App Management/1.png"></details>|

Lorsque l’application Hub détecte qu’une version plus récente est disponible, l’application sera automatiquement mise à jour au prochain lancement. Une fois la mise à jour effectuée, le numéro de version affiché à gauche de l’application changera également.

## Canaux de diffusion (tester de nouvelles versions)

Pour tester de nouvelles versions en toute sécurité, vous utilisez différents canaux de diffusion dans l’application Hub. Par défaut, il y a deux canaux : *latest* (la version provenant du backoffice – version bin) et *update* (la version de votre client de mise à jour).

Les applications sont automatiquement téléchargées grâce au paramètre "*Télécharger les applications frontales avec Cloud.Server*". Vous n’avez pas besoin de mettre à jour le serveur cloud, il suffit de le télécharger.
<!-- Je ne suis plus certain que ce processus soit entièrement automatique. À vérifier.-->
Les canaux de diffusion se trouvent dans le dossier 'Shared/Florisoft/DataPGS/Binapps/', où vous verrez les dossiers *latest* et *update*. Pour déployer les applications du canal *update* vers *latest*, vous devez déplacer manuellement les fichiers correspondants.

Le déploiement des nouvelles versions sera bientôt simplifié, mais pour l’instant cela reste manuel. Si vous souhaitez passer les versions *update* en production (*latest*), déplacez le contenu du dossier '*update*' vers le dossier '*latest*'.

**Pour pouvoir annuler facilement en cas d’erreur, il est conseillé de copier d’abord le contenu du dossier latest vers un dossier de sauvegarde temporaire. Assurez-vous ensuite que le dossier latest est vide avant d’y placer les applications du dossier update.**

### Définir le canal de diffusion dans les applications

*Vous configurez le canal de diffusion dans l’application Hub. Suivez les étapes ci-dessous :*

|Étape|Explication|
|:-:|:--|
|**1**|Dans l’application Hub, cliquez sur le menu hamburger en haut à droite de l’écran.<details><summary><b>Cliquez ici pour un exemple !</b></summary><img src="Media/App Management/3.png" height=350px></details>|
|**2**|Cliquez ensuite sur l’icône en forme d’engrenage pour accéder aux paramètres.<details><summary><b>Cliquez ici pour un exemple !</b></summary><img src="Media/App Management/4.png" height=350px></details>|
|**3**|Remplissez ensuite le champ *Canal de diffusion* avec '**update**' ou '**latest**'.<details><summary><b>Cliquez ici pour un exemple !</b></summary><img src="Media/App Management/5.png" height=350px></details>|
|**4**|Cliquez sur enregistrer. Il vous sera alors demandé de redémarrer l’application. Cliquez sur Oui.<details><summary><b>Cliquez ici pour un exemple !</b></summary><img src="Media/App Management/6.png" height=350px></details>|
