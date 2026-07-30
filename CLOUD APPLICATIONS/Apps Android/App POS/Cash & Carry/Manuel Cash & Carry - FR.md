![Logo Florisoft](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)

# Manuel – Cash & Carry (application POS)

## Introduction

Avec **Cash & Carry**, un employé commercial traite les ventes directes dans l’application POS Florisoft. L’employé sélectionne un client et une commande, ajoute des articles par scan ou recherche, enregistre les emballages consignés et finalise la vente via une caisse ou le flux de paiement interne.

Le workflow est en grande partie configuré au moyen de policies. Chaque organisation peut ainsi déterminer les clients, commandes, stocks, prix, unités de vente, modes de paiement et options de finalisation disponibles.

Ce manuel décrit les étapes utilisateur et précise directement, pour chacune d’elles, les policies qui déterminent le fonctionnement.

---

## Licences requises et prérequis

Cash & Carry nécessite au minimum :

- l’accès à l’**application POS** Florisoft ;
- l’accès à la use case `Sales.POS.CashCarry` ;
- un utilisateur et un employé valides ;
- un scanner ou une caméra pour les flux de scan ;
- des clients, commandes, lots de stock et stocks disponibles ;
- pour les paiements : des modes de paiement configurés ou une liaison avec la caisse externe ;
- pour l’impression : une imprimante et une mise en page configurées, ainsi qu’un Cloud Server ou Job Agent accessible ;
- pour l’e-mail : des adresses valides et une configuration d’e-mail opérationnelle.

Installez l’application via le Hub Florisoft. Elle apparaît sous le nom **Sales.POS** dans le catalogue. Lors de la première utilisation, contrôlez l’URL du Cloud Server, la langue et les identifiants avant d’ouvrir Cash & Carry.

## Où trouver les policies ?

Dans le Backoffice, ouvrez l’**écran des constantes**, puis accédez à **Apps → Sales → POS → CashCarry** via **Système → Users → Gestion des policies**.

Les groupes sous-jacents **OrderActivation**, **ShoppingCart**, **StockItemSelection**, **Returnables**, **Payment** et **PackageListPrintSettings** contiennent les paramètres des étapes correspondantes. **OrderActivation** et **ShoppingCart** comportent encore des sous-groupes pour les paramètres du client, de la commande et des lignes.

Pour plus d’informations sur la création, l’association et la priorité des policies, consultez le [manuel Policy Management](https://github.com/florisoft/User.Manuals/blob/main/BASIS/Policy%20Management/Handleiding%20Policy%20Management%20NL.md).

> Une valeur de policy vide peut reprendre un paramètre existant du Backoffice ou le comportement par défaut. Testez donc d’abord toute modification avec une policy de test distincte, un client de test et une commande représentative.

---

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

---

## Résumé du processus Cash & Carry

1. Ouvrez **Cash & Carry** et identifiez l’employé.
2. Sélectionnez un client ou scannez un code-barres de client ou de commande.
3. Sélectionnez une commande existante ou créez-en une nouvelle.
4. Contrôlez le panier.
5. Scannez des articles ou ajoutez-les depuis la vue des lots de stock.
6. Contrôlez et, si nécessaire, modifiez les quantités, unités de vente, prix et détails.
7. Enregistrez les emballages sortants et retournés.
8. Finalisez le panier.
9. Selon la configuration, choisissez la caisse ou le flux de paiement interne.
10. Sélectionnez les factures à payer et enregistrez un ou plusieurs paiements.
11. Contrôlez la facture, saisissez une signature si nécessaire et choisissez l’impression ou l’e-mail.
12. Terminez la vente ; Florisoft revient à la sélection du client.

---

## Étape 1 – Démarrer l’application et le contexte employé

Ouvrez l’application POS et choisissez **Cash & Carry**. Florisoft charge les policies et l’état utilisateur enregistré. Si aucun employé n’est encore connu, l’application demande d’abord un identifiant d’employé. Toutes les ventes, modifications et tous les paiements sont ensuite associés à cet employé.

L’application conserve les choix utilisateur utiles pour la session suivante, tels que les filtres de la vue des lots de stock et la dernière unité de vente sélectionnée.

`DefaultEmployeeGroup` détermine le groupe d’employés par défaut lorsqu’un ordre de travail est créé depuis Cash & Carry. Ne renseignez cette valeur que si les processus associés utilisent des groupes d’employés.

> Si l’employé ne peut pas être identifié, le flux de vente ne démarre pas. Contrôlez l’employé, ses autorisations et la connexion au Cloud Server.

---

## Étape 2 – Sélectionner ou scanner un client

Dans l’écran **Clients**, vous pouvez parcourir la liste, effectuer une recherche ou scanner un code-barres. Sélectionnez le client et contrôlez le nom et l’adresse affichés avant de continuer.

Les policies sous **OrderActivation → CustomerSelection** déterminent les clients et les outils disponibles :

- `IncludeStockCustomers` détermine si les clients de stock apparaissent dans les résultats ;
- `ShowRecentlyUsedCustomersInSearch` affiche les clients récemment utilisés en tête ou comme sélection rapide ;
- `BlockDoNotSupplyCustomers` bloque les clients ayant le statut **Ne pas livrer** ;
- `ValidBarcodeDecodeOptions` détermine les variantes de codes-barres utilisées pour reconnaître les clients et les commandes.

Pour un code-barres client valide, Florisoft ouvre le client trouvé. Si le scan fait référence à une ligne de commande, Florisoft recherche le client et la commande correspondants.

Une commande d’un autre client n’est pas ouverte automatiquement sous le client actif. Florisoft affiche alors un message pour éviter d’enregistrer accidentellement la vente sur le mauvais client.

---

## Étape 3 – Sélectionner ou créer une commande

Après la sélection du client, Florisoft affiche les commandes disponibles. Vous pouvez ouvrir une commande existante ou en créer une nouvelle.

### Sélectionner une commande existante

Les policies sous **OrderActivation → OrderSelection** déterminent les commandes affichées :

- `ExcludePastOrders` masque les commandes passées ;
- `OrderDateFilter` détermine la date utilisée pour filtrer les commandes ouvertes. La valeur par défaut est `OrderDate`.

Sélectionnez la commande, contrôlez son numéro et sa date, puis accédez au panier.

Lorsque `EnableOrderLocking` est activé, Florisoft verrouille la commande dès son ouverture dans Cash & Carry. Un autre utilisateur ne peut alors pas la modifier simultanément. Le verrou est libéré à la fermeture de la commande ou à la fin de la session.

### Créer une nouvelle commande

Les policies sous **OrderActivation → OrderCreation** déterminent les informations demandées :

- `InputType` sélectionne le premier écran de saisie :
  - `None` : aucun écran supplémentaire ;
  - `OrderDetails` : saisir les détails de la commande ;
  - `DeliveryChoice` : effectuer un choix de livraison ;
- `RequireOrderNumberForCustomers` contient les clients pour lesquels un numéro ou un nom de commande est obligatoire ;
- `DeliveryOrderSuffix` ajoute le suffixe configuré aux commandes de livraison ;
- `OrderNumberDeterminationType` détermine comment Florisoft attribue le nouveau numéro de commande.

Saisissez les informations demandées et confirmez la commande. Un numéro obligatoire doit être valide et unique selon la méthode de numérotation choisie.

### Sessions de commande

La description de la use case Cash & Carry prévoit un mode facultatif de sessions de commande. Il permet de traiter séparément plusieurs moments de vente sur une même commande. Les nouvelles lignes et les enregistrements d’emballages reçoivent alors le numéro de session actif, tandis que l’étape de paiement peut afficher la commande entière.

Les paramètres correspondants `UseOrderSessions` et `FilterCartByActiveSession` figurent dans la description de la use case, mais ne sont pas proposés comme policies Cash & Carry configurables dans toutes les versions. N’utilisez cette méthode que si les sessions sont disponibles et testées dans votre version.

---

## Étape 4 – Contrôler le panier

Après l’ouverture ou la création de la commande, le **Panier** apparaît. Pour une commande existante, Florisoft recharge les lignes autorisées.

`ShoppingCartItemsPurchaseTypes` détermine les types de distribution supplémentaires chargés dans le panier en plus de Cash & Carry. Les lignes d’un autre type de distribution peuvent être signalées par un symbole de compartiment ou d’emplacement.

Les policies suivantes déterminent l’affichage général :

- `ProductQuantityDisplayType` détermine la présentation des quantités ;
- `ShowPurchasePrice` affiche ou masque le prix d’achat ;
- `ShowCustomerDivisionInfo` affiche les informations supplémentaires de répartition du client ;
- `AllowViewInvoiceDetails` détermine si la composition complète du prix peut être ouverte via le montant total ;
- `InvoiceTotalsDisplayType`, sous **Payment**, sélectionne un affichage simple ou complet des totaux.

Pour une commande existante, vérifiez toujours que les lignes et quantités attendues sont visibles avant d’ajouter de nouveaux articles.

---

## Étape 5 – Scanner et ajouter un article

1. Sélectionnez, si nécessaire, l’unité de vente souhaitée.
2. Scannez le code-barres du lot de stock ou de l’article.
3. Contrôlez la description, la quantité et le prix reconnus.
4. Scannez à nouveau pour augmenter la ligne existante ou modifiez manuellement la quantité.

`ValidBarcodeDecodeOptions`, au niveau **CashCarry**, détermine les décodeurs valides lors de l’ajout d’articles. Un code-barres inconnu ou non autorisé est refusé.

`AllowedStockCodes` limite les stocks depuis lesquels des articles peuvent être vendus dans Cash & Carry. Un lot valide peut donc être absent ou impossible à ajouter si son code de stock n’est pas autorisé.

### Unité de vente et quantités

Les policies sous **ShoppingCart** déterminent la saisie des quantités :

- `ShowSalesUnitSelector` affiche le choix entre **Colli** et **VE/SU** ;
- `DefaultSalesUnit` définit `Colli` ou `SU` par défaut ;
- `AllowSellingBelowSalesUnit` détermine s’il est possible de vendre moins d’une unité de vente complète ;
- `ResetSalesUnitAfterScan` rétablit `DefaultSalesUnit` après chaque scan. Si cette policy est désactivée ou vide, l’unité choisie reste active.

Dans le Backoffice, une unité de vente peut être associée à chaque type de code-barres, par exemple Code de scan, Code EAN ou Code de scan 2. Lorsque cette association existe et que l’unité correspondante est renseignée sur le lot, le code-barres scanné détermine automatiquement l’unité de vente. Sans association utilisable, Florisoft applique le comportement normal de `DefaultSalesUnit` et le choix actif de l’utilisateur.

`ShowOrderItemDetailsAfterAdd` ouvre automatiquement l’écran de détails après l’ajout. Si cette policy est désactivée, l’utilisateur reste dans le panier.

---

## Étape 6 – Rechercher manuellement un article

Si un article ne peut pas être scanné, appuyez sur la **loupe** pour ouvrir la vue des lots de stock.

1. Recherchez par nom, code, description ou numéro d’article.
2. Utilisez les filtres avancés si nécessaire.
3. Sélectionnez le bon lot de stock.
4. Ajoutez-le et contrôlez le résultat dans le panier.

`AvailableStockItemFilterOptions`, sous **StockItemSelection**, détermine les filtres avancés disponibles :

- `StockIds` : codes de stock ;
- `PackagingIds` : codes d’emballage ;
- `SupplierIds` : fournisseurs ;
- `ShipmentNumber` : numéro d’arrivage ;
- `EmptyItems` : lots vides ;
- `StemLength` : longueur de tige ;
- `ProductGroupIds` : groupes de produits ;
- `StockItemMarks` : marquages de lots.

L’application enregistre les filtres choisis dans l’état utilisateur et les réapplique lors de l’utilisation suivante. Effacez-les lorsqu’un lot attendu est introuvable.

Un marquage dans la vue peut indiquer que le lot est déjà présent dans le panier. Un nouvel ajout augmente alors la ligne existante.

`SetPurchasePriceType` détermine le champ de prix configurable affiché. Les valeurs possibles sont `DoNotShow`, `PurchasePrice1`, `PurchasePrice2`, `PriceGroup1` et `PriceGroup2`. Ce paramètre est distinct de `ShowPurchasePrice` : selon la combinaison, zéro, un ou deux champs de prix peuvent être visibles.

---

## Étape 7 – Modifier les quantités, le prix et les détails de ligne

Ouvrez une ligne pour consulter ses détails. Les listes ordonnées sous **ShoppingCart → OrderItemDetails** déterminent les champs visibles et modifiables :

- `AvailableOrderitemDetails` détermine les champs affichés et leur ordre ;
- `AllowEditOrderitemDetails` détermine les champs que l’employé peut modifier.

Les champs disponibles sont :

- `Description` : description ;
- `Price` : prix de vente ;
- `Quantity` : quantité ;
- `PackageAmount` : quantité d’emballages ;
- `PackageCode` : code d’emballage ;
- `SalesUnit` : unité de vente ;
- `Colli` : nombre de colli ;
- `ArticleNumber` : numéro d’article ;
- `ArticleKey` : clé d’article ;
- `StockItemMark` : marquage du lot.

Après l’enregistrement, Florisoft recalcule la ligne et le total de la commande.

### Vente sous le prix d’achat

`AllowSellingBelowPurchasePrice` détermine le comportement lorsque le prix de vente est inférieur au prix d’achat :

- `AllowWithoutWarning` : enregistrer sans avertissement ;
- `AllowWithWarning` : autoriser après un avertissement ;
- `DoNotAllowWithWarning` : bloquer et afficher un avertissement ;
- `AllowWithStockItemMark` : autoriser uniquement pour les lots ayant un marquage permis.

Avec `AllowWithStockItemMark`, le marquage doit figurer dans `AllowedStockItemMarksForSellingBelowPurchasePrice`. Sinon, le prix initial est conservé.

`ShoppingcartSaleUnder0` détermine si la répartition peut descendre sous zéro pendant une vente. N’utilisez ce paramètre que si un stock négatif ou pas encore disponible est volontairement autorisé par la procédure de l’entreprise.

---

## Étape 8 – Utiliser les remises et actions de commande

### Remise par code-barres

Un code-barres de remise peut activer un pourcentage ou un montant fixe pour le prochain article scanné. Scannez d’abord la remise, puis l’article. Contrôlez toujours qu’elle a été appliquée à la bonne ligne et au nouveau total.

`DiscountCategory` détermine la catégorie de remise utilisée par Florisoft.

### Remise sur la commande

`EnableDiscount`, sous **Payment**, détermine si une remise peut être ajoutée ou modifiée sur la commande ouverte depuis l’écran des totaux de facture. Cette fonction est distincte du code-barres de remise pour un scan individuel.

### Modifier la commande

`EnabledOrderActions`, sous **ShoppingCart**, détermine les actions supplémentaires disponibles :

- `MoveOrder` : déplacer la commande vers un autre client ;
- `DeleteOrder` : supprimer la commande ;
- `NewOrderLine` : créer une ligne sans le flux de scan normal.

Florisoft demande une confirmation pour les actions importantes. Avant un déplacement ou une suppression, contrôlez toujours le client, le numéro de commande et le contenu du panier.

---

## Étape 9 – Enregistrer les emballages consignés

Ouvrez **Emballages consignés** pour enregistrer les emballages sortants et retournés.

1. Sélectionnez un code existant ou ajoutez un code autorisé.
2. Saisissez la quantité sortante.
3. Saisissez la quantité retournée.
4. Contrôlez le solde.
5. Enregistrez et revenez au panier.

Les policies suivantes déterminent le fonctionnement :

- `PackageCodes` contient les codes que l’employé peut sélectionner ;
- `DisplayedReturnableIdentifier` affiche la `Description` ou le `Code` de chaque emballage ;
- `ShowWarningWithoutAddedReturnables` avertit lors de la finalisation si aucun emballage n’a été enregistré ;
- `RegisterPackagingInOrderlineType` détermine comment l’emballage est enregistré dans les lignes.

Un code déjà utilisé n’est pas ajouté deux fois. Modifiez plutôt la ligne existante.

Lorsque des codes QR contenant des informations d’emballage sont configurés, un scan peut ajouter le code et les quantités ou augmenter une ligne existante. Après chaque scan, contrôlez la quantité sortante, la quantité retournée et le solde.

---

## Étape 10 – Finaliser le panier

Appuyez sur **Finaliser** ou **Payer** lorsque tous les articles et emballages ont été contrôlés.

`ProcessPayments`, sous **Payment**, détermine l’étape suivante :

- `Yes` : toujours poursuivre vers le flux de paiement interne ;
- `No` : finaliser sans paiement interne, par exemple via une liste de colisage ou une caisse externe ;
- `UserChoice` : l’employé choisit de payer ou de poursuivre sans paiement interne.

`TransferToCheckout` détermine si la commande est transférée à une caisse externe. Dans ce cas, vérifiez qu’elle est bien arrivée à la caisse avant de fermer la session Cash & Carry.

Les policies sous **ShoppingCart → OrderFinalization** déterminent les options disponibles et sélectionnées par défaut avant le paiement :

- `AllowedShoppingCartFinalizationOptions` ;
- `DefaultShoppingCartFinalizationValues`.

Les options possibles sont `PrintPackageList`, `MailPackageList`, `PrintInvoice` et `MailInvoice`. Seules les options de la liste autorisée peuvent être choisies. La liste par défaut détermine les options préréglées sur **Oui**.

`AdditionalActions` peut exécuter des actions supplémentaires lors de la finalisation d’une commande Cash & Carry. Les valeurs utilisables dépendent de la version configurée et des processus associés.

---

## Étape 11 – Sélectionner et payer les factures

Dans le flux de paiement interne, Florisoft affiche un récapitulatif de la commande et les factures ouvertes du client actif.

1. Contrôlez les articles et le montant total de la facture.
2. Sélectionnez une ou plusieurs factures ouvertes.
3. Contrôlez le total de la sélection.
4. Ajoutez un ou plusieurs paiements.
5. Contrôlez le montant restant ou la monnaie à rendre.
6. Continuez lorsque l’enregistrement est correct.

`PaymentMethods` détermine les modes de paiement disponibles, par exemple espèces et carte. Plusieurs modes peuvent être combinés.

Les autres policies de paiement déterminent :

- `RequirePaymentBeforeCompletion` : la vente ne peut pas être terminée sans paiement ;
- `ShowPaymentSummary` : affiche un résumé des montants payé, à payer et de la différence ;
- `InvoiceTotalsDisplayType` : `Simple` affiche un total concis et `Complete` la composition complète du prix ;
- `EnableDiscount` : autorise une remise de commande depuis les détails de facture.

Lorsque le paiement n’est pas obligatoire, Florisoft peut poursuivre sans enregistrement après une confirmation explicite. Utilisez cette possibilité uniquement pour les clients et situations autorisés par la procédure de l’entreprise.

### Payer des factures ouvertes sans commande active

Lorsque `ProcessPayments` est défini sur `Yes` ou `UserChoice`, une route de paiement distincte peut être disponible depuis la sélection du client ou de la commande. Elle permet de sélectionner et payer des factures ouvertes sans créer d’abord une nouvelle commande ou un panier vide.

Florisoft démarre alors avec un état de paiement vierge afin de ne pas réutiliser les factures, adresses e-mail et choix d’impression d’une vente précédente.

---

## Étape 12 – Finaliser la facture, la signature et la sortie

Après le paiement, Florisoft récupère les fichiers de facture et renseigne les adresses e-mail de facturation disponibles du client. Contrôlez le document et les destinataires avant de continuer.

Les policies sous **Payment → OrderFinalization** déterminent les sorties disponibles :

- `AllowedPaymentFinalizationOptions` : options d’impression et d’e-mail autorisées ;
- `DefaultPaymentFinalizationValues` : options présélectionnées ;
- `ShowInvoiceSignaturePage` : affiche ou masque la page contenant la facture, les adresses e-mail et la signature ;
- `RequireInvoiceSignature` : rend la signature obligatoire.

`ShowInvoiceSignaturePage` est considéré comme activé tant que sa valeur n’est pas explicitement désactivée. Si `RequireInvoiceSignature` est actif, l’utilisateur ne peut pas terminer sans signature.

Au moins une adresse valide est nécessaire pour l’e-mail. Corrigez-la dans l’application lorsque la configuration le permet, ou modifiez l’adresse du client dans le Backoffice.

Les paramètres suivants sont importants pour l’impression :

- `Invoice_Printing_PrinterName` : imprimante des factures via le Cloud Server ;
- `PackageListPrintLayout` : mise en page de la liste de colisage ;
- `PackageListPrinter` : imprimante de la liste de colisage ;
- `FillPackingListNo` : renseigne le numéro de liste de colisage lors de la création d’un pickorder.

Confirmez les sorties choisies. Après une finalisation réussie, Florisoft verrouille la commande définitive, efface l’état actif du client, de la commande, du panier et du paiement, puis revient à la sélection du client.

---

## Cash & Carry dans un autre workflow

Cash & Carry peut être ouvert comme child use case depuis un autre processus, par exemple pour enregistrer un article de remplacement. Le workflow parent fournit alors le contexte du client, de la commande ou de l’ordre de travail.

L’utilisateur travaille uniquement dans le contexte fourni. Les lignes du processus parent peuvent être visibles pour contrôle, mais non modifiables. Après l’ajout ou la sélection de l’article demandé, l’application revient au workflow parent.

Dans cette variante, ne sélectionnez pas de façon autonome un autre client ou une autre commande. Si le contexte est inattendu, contrôlez l’ordre de travail initial et redémarrez la child use case.

---

## Messages et solutions

### Un client est absent

- Effacez le texte de recherche et réessayez.
- Contrôlez `IncludeStockCustomers`.
- Vérifiez si le client a le statut **Ne pas livrer** et si `BlockDoNotSupplyCustomers` est actif.
- Contrôlez les droits sur le client et la connexion au Cloud Server.

### Une commande est absente ou ne peut pas être ouverte

- Contrôlez `ExcludePastOrders` et `OrderDateFilter`.
- Vérifiez que la commande appartient au client sélectionné.
- Vérifiez si une référence obligatoire est absente.
- Demandez à l’autre utilisateur de fermer la commande si elle est verrouillée.

### Le code-barres n’est pas reconnu

- Vérifiez que vous scannez un code de client, de commande ou d’article dans le bon écran.
- Contrôlez le paramètre `ValidBarcodeDecodeOptions` concerné.
- Vérifiez que le code de stock figure dans `AllowedStockCodes`.
- Recherchez manuellement l’article pour déterminer si le lot est disponible.

### Un lot de stock est absent

- Effacez les filtres enregistrés dans la vue des lots.
- Contrôlez `AvailableStockItemFilterOptions` et les valeurs choisies.
- Contrôlez `AllowedStockCodes`.
- Vérifiez que le lot dispose encore de stock et qu’il est vendable.

### Le prix ne peut pas être enregistré

- Vérifiez que `Price` figure dans `AllowEditOrderitemDetails`.
- Contrôlez `AllowSellingBelowPurchasePrice`.
- Avec `AllowWithStockItemMark`, contrôlez également `AllowedStockItemMarksForSellingBelowPurchasePrice`.
- Vérifiez que le bon prix d’achat est enregistré sur le lot.

### Un emballage consigné manque ou est signalé deux fois

- Vérifiez que le code figure dans `PackageCodes`.
- Modifiez une ligne existante au lieu d’ajouter à nouveau le même code.
- Contrôlez les quantités sortantes et retournées.
- Contrôlez `ShowWarningWithoutAddedReturnables`.

### Le paiement n’est pas disponible

- Contrôlez `ProcessPayments`.
- Contrôlez les droits de paiement de l’employé.
- Vérifiez que `PaymentMethods` contient des modes de paiement valides.
- Pour une caisse externe, contrôlez `TransferToCheckout` et la liaison de caisse.

### La finalisation sans paiement ne fonctionne pas

`RequirePaymentBeforeCompletion` impose un enregistrement complet du paiement. Contrôlez les factures sélectionnées, les montants et le solde, ou ne modifiez la policy que si la procédure de l’entreprise autorise une finalisation sans paiement.

### L’impression ou l’envoi par e-mail ne fonctionne pas

- Vérifiez que l’option souhaitée figure dans le paramètre `Allowed...FinalizationOptions` concerné.
- Contrôlez l’imprimante, la mise en page, le Cloud Server ou le Job Agent.
- Contrôlez séparément l’imprimante de factures et celle des listes de colisage.
- Pour l’e-mail, contrôlez l’adresse du client et la configuration d’e-mail.

### La page de signature n’apparaît pas

Contrôlez `ShowInvoiceSignaturePage`. Contrôlez également `RequireInvoiceSignature` lorsque la signature doit être obligatoire.

---

## Points importants pour une configuration correcte

- Testez la sélection des clients et les scans de commandes et d’articles avec les décodeurs configurés.
- Limitez `AllowedStockCodes`, les champs de prix et les actions de commande aux besoins réels de l’employé.
- Choisissez délibérément si l’application vend par défaut en `Colli` ou en `SU` et testez `ResetSalesUnitAfterScan`.
- Testez les quatre variantes de vente sous le prix d’achat, y compris les marquages de lots autorisés.
- Contrôlez les codes d’emballage et les quantités sortantes et retournées avant chaque mise en production.
- Testez `ProcessPayments`, `TransferToCheckout` et `RequirePaymentBeforeCompletion` comme une configuration de paiement cohérente.
- Testez séparément les imprimantes de factures et de listes de colisage avec les mises en page définitives.
- N’utilisez les sessions de commande que si elles sont disponibles et testées de bout en bout dans la version utilisée.
- Terminez entièrement une session de test et vérifiez que la vente suivante commence avec un état client, commande et paiement vide.
