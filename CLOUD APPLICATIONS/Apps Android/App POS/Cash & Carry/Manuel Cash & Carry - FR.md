![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)

# Manuel de l'application Florisoft Cash & Carry (POS)

Ce document décrit le processus d’utilisation de l’application Cash & Carry développée par Florisoft. Vous y trouverez les étapes de téléchargement, d’installation et d’utilisation générale de l’application.

## Table des matières

[Installation et téléchargement de l’application](#installation-et-téléchargement-de-lapplication)
[Configuration complémentaire dans le Backoffice](#configuration-complémentaire-dans-le-backoffice)
[Vue d'ensemble du processus utilisateur (guide pas à pas)](#vue-densemble-du-processus-utilisateur-guide-pas-à-pas)

## Hub-app

*Cette application est installée via l'application Hub de Florisoft. Suivez les étapes ci-dessous :*

|Étape|Explication|
|:-:|:--|
|**1**|Ouvrez votre Hub-app et cliquez sur le bouton **Aller au catalogue**.<details><summary><b>Cliquez ici pour voir l’image d’exemple !</b></summary><img src="Media/42.png"></details>|
|**2**|Si vous n’êtes pas encore connecté, une page de connexion apparaîtra. Connectez-vous.<details><summary><b>Cliquez ici pour voir l’image d’exemple !</b></summary><img src="Media/43.png"></details>|
|**3.a**|Vous verrez maintenant les applications disponibles pour votre système. Celles déjà installées ont un emblème violet. Recherchez la ligne *Sales.POS* ; si un emblème violet est affiché, cliquez dessus pour ouvrir l’application.<details><summary><b>Cliquez ici pour voir l’image d’exemple !</b></summary><img src="Media/41.png"></details>|
|**3.b**|Si l’emblème est grisé, l’application n’est pas encore installée. Faites glisser la ligne vers la gauche pour faire apparaître les icônes de téléchargement et de suppression. Cliquez sur l’icône de téléchargement.<details><summary><b>Cliquez ici pour voir l’image d’exemple !</b></summary><img src="Media/42.png"></details>|
|**4**|Le processus d’installation commence. Il vous sera demandé plusieurs confirmations, acceptez-les toutes.|
|**5**|Une fois l’application installée, un emblème violet doit apparaître. Cliquez dessus pour lancer l’application Cash & Carry.<details><summary><b>Cliquez ici pour voir l’image d’exemple !</b></summary><img src="Media/41.png"></details>|

## Configuration complémentaire dans le Backoffice

Les policies déterminent les fonctions proposées par l’application POS, mais elles ne constituent pas l’unique configuration. Cash & Carry utilise également les données de base et les paramètres du client, de l’utilisateur, des articles, des lots de stock, des emballages consignés, des documents et des imprimantes.

> Le nom exact ou l’emplacement d’un champ peut varier selon la version de Florisoft. Certains champs de l’onglet classique **Client → Cash & Carry** proviennent de l’application desktop. Lorsqu’un paramètre plus récent est utilisé par l’application POS actuelle, cela est indiqué ci-dessous.

### Sélection et blocage des clients

L’application POS utilise les données suivantes lors de la recherche et de la sélection d’un client :

| Paramètre ou donnée | Fonctionnement dans Cash & Carry |
|---|---|
| Numéro, nom et clé de recherche du client | L’employé peut rechercher le client à partir de ces valeurs. |
| Inactif ou archivé | Le client n’est pas proposé dans la sélection. |
| Unité financière | Seuls les clients appartenant aux unités financières de l’utilisateur connecté sont proposés. Les unités financières supplémentaires de l’utilisateur sont également prises en compte. |
| Responsable de compte | Si le filtrage par responsable de compte est activé pour l’utilisateur, seuls les clients du vendeur associé sont proposés. |
| Ne pas livrer et motif | L’application affiche le blocage de livraison. `BlockDoNotSupplyCustomers` peut empêcher complètement la sélection de ce client. |
| Informations de répartition | Peuvent être affichées pour le client lorsque `ShowCustomerDivisionInfo` est activé. |
| Client de stock | `IncludeStockCustomers` détermine si les clients de stock peuvent apparaître dans la sélection. |

Lorsqu’un client est absent, contrôlez donc non seulement la policy, mais aussi son statut, son unité financière et son responsable de compte.

### Carte client et identification par scan

Dans l’application POS actuelle, il est préférable d’enregistrer une carte client comme **coordonnée du client** :

- type de contact : **Cash & Carry** ;
- type de liste : **Carte client** ;
- valeur : le code figurant sur la carte ou le code-barres ;
- statut : actif.

La configuration standard des codes-barres peut reconnaître aussi bien le numéro du client que cette coordonnée. `ValidBarcodeDecodeOptions` détermine les types de codes-barres réellement acceptés.

Le champ **Code de carte client** (`KLANTCODE`) de l’onglet classique **Client → Cash & Carry** appartient à l’ancien workflow desktop et peut y être utilisé avec le paramètre système `CCScanKlantPas`. Pour l’application POS actuelle, utilisez la coordonnée du client, sauf si l’environnement utilise encore de manière démontrable l’intégration classique.

### Client → Cash & Carry

L’onglet Cash & Carry classique d’un client peut contenir les données suivantes :

| Paramètre | Description |
|---|---|
| Mode de paiement par défaut | Mode de paiement par défaut du flux Cash & Carry classique, par exemple compte, espèces, prélèvement, carte ou chèque. |
| Modes de paiement autorisés | Limite les modes de paiement autorisés pour ce client dans le flux classique. Dans l’application POS actuelle, `PaymentMethods` et les modes de paiement autorisés de l’utilisateur sont principalement déterminants. |
| Majoration par stock | Enregistre, par client et par stock, une majoration en pourcentage et/ou un montant fixe. Le calcul du prix peut appliquer cette majoration client. |
| Prix d’achat | Indique que le prix d’achat du lot de stock sert de base à la majoration client. Testez le résultat avec un article représentatif, car d’autres règles tarifaires peuvent également l’influencer. |
| Envoyer automatiquement par e-mail à | Peut activer l’envoi automatique de la liste de colisage dans le flux classique. L’adresse de destination est enregistrée dans **Adresse e-mail de la liste de colisage**. |
| Adresse e-mail de la liste de colisage (`PAKEMAIL`) | Première adresse privilégiée par l’application POS actuelle pour envoyer la liste de colisage. |
| Toujours demander des informations supplémentaires | Demande, dans le flux classique de liste de colisage ou de pickorder, un texte supplémentaire pouvant être imprimé sur la liste de colisage. |
| Département par défaut | Département par défaut pour le traitement PDA/Cash & Carry. Son effet pratique peut varier selon la configuration et doit être testé dans le flux de commande concerné. |
| Ne jamais utiliser le prix d’achat minimum | Exclut ce client du prix d’achat minimum 1. |
| Ne jamais utiliser le prix d’achat minimum 2 | Exclut ce client du prix d’achat minimum 2. |
| Toujours utiliser le prix d’achat minimum | Force le prix d’achat minimum pour ce client. Faites contrôler ce paramètre s’il est combiné avec l’une des deux exclusions précédentes. |
| Département et type de frais | Peuvent déterminer une ligne de frais ou de remise propre au client lors de la création d’une facture, par exemple une remise d’enlèvement. |
| Code de carte client | Code classique de carte client ; pour l’application POS actuelle, utilisez de préférence la coordonnée décrite ci-dessus. |

Le prix final dans Cash & Carry peut être influencé non seulement par la majoration client, mais aussi par les listes de prix, les paliers de quantité, les prix d’achat minimum, les données de l’article et du lot, ainsi que les policies de modification des prix.

### Paramètres POS propres au client

Des paramètres Cash & Carry propres au client peuvent être enregistrés dans l’extension du client. Leur emplacement exact peut varier selon la version ou la configuration de l’écran.

| Paramètre | Description |
|---|---|
| `CCOrdernumberInputMandatory` | Rend obligatoire la saisie d’un numéro ou d’un nom de commande pour ce client. Cela s’applique également si le client ne figure pas dans `RequireOrderNumberForCustomers`. |
| `CCFinaliseOrdersPackingListSetting` | Définit la préférence de ce client pour l’impression et/ou l’envoi par e-mail de la liste de colisage lors de la finalisation du panier. |
| `CCFinaliseOrdersInvoiceSetting` | Définit la préférence de ce client pour l’impression et/ou l’envoi par e-mail de la facture lors de la finalisation du panier. |

Les valeurs suivantes sont disponibles pour les deux paramètres de finalisation :

| Valeur | Signification |
|---|---|
| Policy | Utiliser la configuration générale des policies. |
| Désactivé | Ne pas afficher les questions d’impression et d’e-mail correspondantes. |
| Imprimer | Sélectionner l’impression par défaut. |
| Envoyer par e-mail | Sélectionner l’envoi par e-mail par défaut. |
| Imprimer et envoyer par e-mail | Sélectionner les deux options par défaut. |
| Ne pas imprimer ni envoyer par e-mail | Ne sélectionner aucune des deux options par défaut ; les questions disponibles peuvent toutefois rester visibles. |

Ces préférences client s’appliquent principalement à la finalisation du panier. La sortie après paiement est également déterminée par les policies sous **Payment → OrderFinalization**.

### Facture, liste de colisage et adresses e-mail

Contrôlez les données Backoffice suivantes pour la production des documents :

| Donnée | Utilisation |
|---|---|
| Mise en page de facture (`FACTLAYOUT`) | Nécessaire pour générer, imprimer ou envoyer correctement une facture. |
| Mise en page de liste de colisage (`PAKLAYOUT`) | Remplace la valeur générale `PackageListPrintLayout` lorsqu’une mise en page propre au client est renseignée. |
| Adresse e-mail de liste de colisage (`PAKEMAIL`) | Première adresse privilégiée pour la liste de colisage. |
| Contacts client actifs – liste Liste de colisage, type E-mail | Utilisés lorsqu’aucune adresse de liste de colisage n’est renseignée. |
| Adresse e-mail générale du client | Dernière adresse de repli pour la liste de colisage. |
| Contacts client actifs – liste Facture, type E-mail | Proposés comme adresses de facture supplémentaires. |

L’impression physique nécessite également les policies `PackageListPrinter` et `Invoice_Printing_PrinterName`, ainsi qu’un Cloud Server ou Job Agent accessible.

### Utilisateur et employé

La configuration de l’utilisateur connecté influence directement les données et actions disponibles :

| Paramètre | Effet |
|---|---|
| Vendeur/employé | Utilisé pour enregistrer les ventes, modifications et paiements. |
| Unité financière et unités financières supplémentaires | Déterminent les clients que l’utilisateur peut sélectionner. |
| Filtrage par responsable de compte | Limite la liste aux clients du vendeur lié à l’utilisateur. |
| Modes de paiement autorisés | Peuvent limiter les modes de paiement de l’application POS actuelle ou servir de valeur par défaut lorsque `PaymentMethods` ne contient aucune valeur explicite différente. |
| Droits sur la use case et les processus associés | Déterminent si l’utilisateur peut exécuter Cash & Carry, traiter les paiements, imprimer et utiliser les workflows liés. |

### Article, lot de stock, unité de vente et emballage consigné

Pour garantir un flux complet d’articles et de scans, les données de base suivantes doivent également être correctes :

- l’article et le lot de stock doivent être actifs, vendables et disponibles dans un stock autorisé ;
- les codes-barres doivent être liés au bon article et au bon type de code-barres ;
- l’unité de vente, le contenu, le colli et l’éventuelle vente partielle doivent être correctement configurés ;
- les prix d’achat et de vente doivent utiliser les bonnes bases tarifaires et unités ;
- les articles et codes d’emballages consignés doivent correspondre à `PackageCodes` ;
- les éventuels marquages de lots doivent correspondre à `AllowedStockItemMarksForSellingBelowPurchasePrice`.

`AllowedStockCodes`, `AllowSellingBelowSalesUnit`, `ShowPurchasePrice` et les autres policies relatives aux articles et aux prix déterminent ensuite quelles données l’utilisateur peut consulter ou modifier.

### Repli sur les paramètres système classiques

Lorsqu’aucune valeur explicite n’est configurée, plusieurs policies peuvent reprendre un paramètre système ou desktop existant :

| Policy | Repli classique possible |
|---|---|
| `OrderNumberDeterminationType` | `CCOrdernummerBepalingType` |
| `TransferToCheckout` | `CCOverhevelenNaarKassa` |
| `ShowWarningWithoutAddedReturnables` | `CCWaarschuwingGeenFustIngevrd` |
| `RequireInvoiceSignature` | `HandtekeningVoorFactuur` |
| `AllowSellingBelowSalesUnit` | `CashCarryOnderVEVerkoop` |
| `ShowPurchasePrice` | `CCPDAInkPrijs1KolomWeergeven` |
| `AllowEditOrderitemDetails` | Notamment `CashCarryPrijsWijzigen` et `CashCarryVEWijzigen` |

Pour les nouvelles configurations, privilégiez des policies explicites. Documentez, pour chaque environnement, les replis classiques encore utilisés volontairement afin d’éviter qu’un ancien paramètre desktop ne pilote l’application POS de manière inattendue.

## Vue d'ensemble du processus utilisateur (guide pas à pas)

*Les étapes ci-dessous décrivent un parcours utilisateur typique dans l'application, à partir de la première ouverture.*

|**Étape**|**Explication**|
|:--|:--|
|**1**|Après l’installation, ouvrez l’application POS.|
|**2**|Cliquez sur le bouton du menu (trois lignes) en haut à droite.<details><summary>**Cliquez ici pour voir l’image d’exemple !**</summary><img src="Media/1.jpg" height=350px></details>|
|**3**|Cliquez sur le bouton **Paramètres** (1).<details><summary>**Cliquez ici pour voir l’image d’exemple !**</summary><img src="Media/2.jpg" height=350px></details>|
|**4**|Remplissez l’URL du serveur cloud dans le champ supérieur.<details><summary>**Cliquez ici pour voir l’image d’exemple !**</summary><img src="Media/27.png" height=350px></details>|
|**5**|Ignorez le champ **Situation**.|
|**6**|Choisissez la langue de l’application via le menu déroulant (par défaut en anglais).<details><summary>**Cliquez ici pour voir l’image d’exemple !**</summary><img src="Media/6.jpg" height=350px></details>|
|**7**|Un message peut s’afficher : **Récupération des paramètres depuis le hub**. Cliquez sur **Annuler** pour fermer ce message.<details><summary>**Cliquez ici pour voir l’image d’exemple !**</summary><img src="Media/4.jpg" height=350px></details>|
|**8**|Cliquez sur le bouton **Enregistrer**, vous reviendrez à l’écran de démarrage de l’application.<details><summary>**Cliquez ici pour voir l’image d’exemple !**</summary><img src="Media/5.jpg" height=350px></details>|
|**9**|Entrez vos identifiants et cliquez sur **LOGIN**.<details><summary>**Cliquez ici pour voir l’image d’exemple !**</summary><img src="Media/7.jpg" height=350px></details>|
|**10**|Saisissez votre code vendeur dans l’écran d’identification et cliquez sur **Sélectionner**.<details><summary>**Cliquez ici pour voir l’image d’exemple !**</summary><img src="Media/9.jpg" height=350px></details>|
|**11**|L’écran de sélection client s’affiche. Trouvez un client dans la liste ou utilisez la barre de recherche.<details><summary>**Cliquez ici pour voir l’image d’exemple !**</summary><img src="Media/10.jpg" height=350px></details>|
|**12**|Cliquez sur la carte du client choisi et appuyez sur **Aller à la commande**.<details><summary>**Cliquez ici pour voir l’image d’exemple !**</summary><img src="Media/11.jpg" height=350px></details>|
|**13**|Cliquez sur **Créer une nouvelle commande** ou sélectionnez une commande existante pour l’ouvrir avec **Aller à la vente**.<details><summary>**Cliquez ici pour voir l’image d’exemple !**</summary><img src="Media/12.jpg" height=350px></details>|
|**14**|Saisissez le nom et la date de la commande, puis cliquez sur **OK**.<details><summary>**Cliquez ici pour voir l’image d’exemple !**</summary><img src="Media/13.jpg" height=350px></details>|
|**15**|Vous êtes maintenant dans l’écran de commande. Scannez ou ajoutez manuellement des colis.<details><summary>**Cliquez ici pour voir l’image d’exemple !**</summary><img src="Media/15.jpg" height=350px></details>|
|**16**|Pour ajouter manuellement, cliquez sur l’icône de loupe en bas à gauche.<details><summary>**Cliquez ici pour voir l’image d’exemple !**</summary><img src="Media/28.jpg" height=350px></details>|
|**17**|Ajoutez un colis en cliquant sur **+** à côté. Cela ajoute le colli par défaut.<details><summary>**Cliquez ici pour voir l’image d’exemple !**</summary><img src="Media/16.jpg" height=350px></details>|
|**18**|Cliquez sur la carte du colis pour plus d’infos.<details><summary>**Cliquez ici pour voir l’image d’exemple !**</summary><img src="Media/31.jpg" height=350px></details>|
|**19**|Cliquez sur l’icône carnet + pour encore plus d’options.<details><summary>**Cliquez ici pour voir l’image d’exemple !**</summary><img src="Media/30.jpg" height=350px></details>|
|**20**|Options disponibles :<br>**1.** Modifier le prix<br>**2.** Modifier les unités<br>**3.** Modifier les emballages.<br><br>La possibilité d’enregistrer un prix inférieur au prix d’achat dépend de la politique configurée. Avec `AllowWithStockItemMark`, cela n’est autorisé que pour les lots dont le marquage figure dans `AllowedStockItemMarksForSellingBelowPurchasePrice`. Sinon, le prix d’origine est conservé et un avertissement s’affiche.<details><summary>**Cliquez ici pour voir l’image d’exemple !**</summary><img src="Media/21.jpg" height=350px></details>|
|**21**|Utilisez les filtres pour rechercher un colis par nom (#1) ou catégorie (#2).<details><summary>**Cliquez ici pour voir l’image d’exemple !**</summary><img src="Media/18.jpg" height=350px></details>|
|**22**|Les colis ajoutés sont visibles à l’écran principal de commande.<details><summary>**Cliquez ici pour voir l’image d’exemple !**</summary><img src="Media/35.jpg" height=350px></details>|
|**23**|Ajoutez ou retournez des emballages via **+ emballages** (#1).<details><summary>**Cliquez ici pour voir l’image d’exemple !**</summary><img src="Media/36.jpg" height=350px></details>|
|**24**|Ajoutez un emballage via le bouton **Ajouter emballage**.<details><summary>**Cliquez ici pour voir l’image d’exemple !**</summary><img src="Media/24.jpg" height=350px></details>|
|**25**|Saisissez le code et cliquez sur **OK**.<details><summary>**Cliquez ici pour voir l’image d’exemple !**</summary><img src="Media/23.jpg" height=350px></details>|
|**26**|Modifiez les quantités entrantes/sortantes avec **+**/**-**. Le tableau récapitule les totaux.<details><summary>**Cliquez ici pour voir l’image d’exemple !**</summary><img src="Media/40.jpg" height=350px></details>|
|**27**|Cliquez sur **Retour** pour revenir à la commande principale.|
|**28**|Finalisez avec **Payer**. Le paiement se fait physiquement en caisse via CC-Touch.<details><summary>**Cliquez ici pour voir l’image d’exemple !**</summary><img src="Media/37.jpg" height=350px></details>|
|**29**|Après avoir clôturé la commande, retour à l’écran de sélection client.<details><summary>**Cliquez ici pour voir l’image d’exemple !**</summary><img src="Media/26.jpg" height=350px></details>|
