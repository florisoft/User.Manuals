# Microsoft Graph API Email

**Microsoft Graph API Email** permet de connecter Florisoft à une boîte aux lettres Microsoft 365 ou Office 365. Florisoft peut utiliser cette connexion pour envoyer des e-mails et, si votre configuration l'exige, récupérer des messages dans la boîte aux lettres. Il peut notamment s'agir de factures numériques, de documents et de messages EKT ou EDI.

Ce manuel est destiné aux administrateurs d'application qui gèrent à la fois Florisoft et le domaine de messagerie Microsoft 365 de leur organisation.

## Conditions préalables

Avant de commencer, vérifiez que :

- votre organisation utilise Microsoft 365 ou Office 365 ;
- vous avez accès aux paramètres de messagerie dans Florisoft ;
- vous pouvez vous connecter avec le compte Microsoft 365 que Florisoft utilisera ;
- vous pouvez gérer l'application Florisoft et les autorisations qui lui sont accordées dans Microsoft Entra ;
- vous connaissez le jeu d'**identifiants de messagerie** à modifier ;
- vous utilisez une version de Florisoft dans laquelle **Microsoft Graph** est disponible. Cette option est disponible à partir de la version **139.000 / 140.000**.

> **Remarque :** si vous utilisez des comptes de boîte aux lettres différents pour l'envoi et la réception, veillez à modifier le bon jeu d'**identifiants de messagerie**.

## 1. Ouvrir les paramètres de messagerie

1. Ouvrez **Constantes** dans Florisoft.
2. Accédez à `Système → Identifiants de messagerie`.
3. Ouvrez le jeu d'identifiants que vous souhaitez connecter à Microsoft Graph.
4. Vérifiez la description et le compte Microsoft 365 avant d'apporter des modifications.

## 2. Sélectionner Microsoft Graph

1. Recherchez la méthode d'authentification dans la configuration de messagerie.
2. Sélectionnez **Microsoft Graph** au lieu de l'authentification SMTP traditionnelle.
3. Ne finalisez pas la modification avant d'avoir terminé la connexion OAuth.

## 3. Créer la connexion OAuth

1. Cliquez sur **Configurer OAuth2**.
2. Connectez-vous avec le compte Microsoft 365 que Florisoft utilisera.
3. Examinez les autorisations demandées.
4. Acceptez-les si elles correspondent à votre configuration.
5. Terminez la connexion et enregistrez le jeu d'**identifiants de messagerie**.

Créez toujours un nouveau jeton OAuth lorsque vous convertissez une configuration de messagerie existante vers Microsoft Graph.

## 4. Contrôler les autorisations dans Microsoft Entra

1. Ouvrez le centre d'administration Microsoft Entra.
2. Recherchez l'application Florisoft utilisée lors de la connexion OAuth.
3. Ouvrez la vue d'ensemble des autorisations accordées.
4. Vérifiez que les autorisations Microsoft Graph demandées ont été accordées.
5. Si le consentement administrateur manque, ouvrez **Permissions** et sélectionnez **Grant admin consent**.
6. Vérifiez ensuite que le consentement apparaît comme accordé.

> L'activation des modifications dans Microsoft Entra peut prendre plusieurs minutes.

## 5. Tester la connexion

### Envoyer un e-mail

1. Envoyez depuis Florisoft un message de test à une adresse e-mail externe.
2. Vérifiez que Florisoft n'affiche aucun message d'erreur.
3. Vérifiez que le destinataire reçoit bien le message.

### Recevoir un e-mail

Si Florisoft importe des messages depuis la boîte aux lettres pour votre processus, vérifiez qu'un nouveau message de test est correctement récupéré et traité.

## Résolution des problèmes

| Problème | Contrôle |
|---|---|
| La connexion ou l'autorisation échoue | Vérifiez que vous utilisez le bon compte Microsoft 365 et que le consentement administrateur a été accordé. |
| Florisoft continue d'afficher une erreur d'authentification | Créez un nouveau jeton OAuth et vérifiez les autorisations dans Microsoft Entra. |
| Les e-mails ne peuvent pas être envoyés | Vérifiez le jeu d'**identifiants de messagerie** sélectionné, le compte de boîte aux lettres et les autorisations accordées. |
| Les e-mails ne peuvent pas être reçus | Vérifiez que la bonne boîte aux lettres et le bon jeu d'**identifiants de messagerie** sont utilisés et que la connexion est autorisée à récupérer les messages. |
| La configuration ne fonctionne pas immédiatement après une modification | Attendez quelques minutes et testez à nouveau ; le traitement des modifications dans Microsoft Entra peut être différé. |
| Un message `504 Gateway Timeout` apparaît | Réessayez ultérieurement. Ce message indique généralement un problème temporaire de réseau ou de connexion avec Microsoft Graph. |

## Après des modifications dans Microsoft 365

Créez une nouvelle connexion OAuth si le compte de boîte aux lettres, le consentement ou les paramètres de sécurité pertinents ont été modifiés et que Florisoft ne peut plus se connecter. Testez ensuite à nouveau l'envoi et la réception, si votre organisation utilise ces deux fonctions.
