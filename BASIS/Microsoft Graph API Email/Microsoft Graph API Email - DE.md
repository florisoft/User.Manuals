# Microsoft Graph API Email

Mit **Microsoft Graph API Email** verbinden Sie Florisoft mit einem Postfach in Microsoft 365 oder Office 365. Florisoft kann diese Verbindung zum Versenden von E-Mails und, sofern für Ihre Konfiguration erforderlich, zum Abrufen von Nachrichten aus dem Postfach verwenden. Beispiele sind digitale Rechnungen, Dokumente sowie EKT- oder EDI-Nachrichten.

Diese Anleitung richtet sich an Anwendungsadministratoren, die sowohl Florisoft als auch die Microsoft-365-E-Mail-Domäne ihres Unternehmens verwalten.

## Voraussetzungen

Stellen Sie vor Beginn sicher, dass:

- Ihr Unternehmen Microsoft 365 oder Office 365 verwendet;
- Sie in Florisoft Zugriff auf die E-Mail-Einstellungen haben;
- Sie sich mit dem Microsoft-365-Konto anmelden können, das Florisoft verwenden soll;
- Sie in Microsoft Entra die Florisoft-Anwendung und deren erteilte Berechtigungen verwalten können;
- Ihnen bekannt ist, welcher Satz **E-Mail-Anmeldedaten** geändert werden muss;
- Sie eine Florisoft-Version verwenden, in der **Microsoft Graph** verfügbar ist. Diese Option ist ab Version **139.000 / 140.000** verfügbar.

> **Hinweis:** Wenn Sie unterschiedliche Postfachkonten zum Senden und Empfangen verwenden, stellen Sie sicher, dass Sie den richtigen Satz **E-Mail-Anmeldedaten** ändern.

## 1. E-Mail-Einstellungen öffnen

1. Öffnen Sie in Florisoft **Konstanten**.
2. Navigieren Sie zu `System → E-Mail-Anmeldedaten`.
3. Öffnen Sie den Satz von E-Mail-Daten, den Sie mit Microsoft Graph verbinden möchten.
4. Prüfen Sie die Beschreibung und das Microsoft-365-Konto, bevor Sie Änderungen vornehmen.

## 2. Microsoft Graph auswählen

1. Suchen Sie in der E-Mail-Konfiguration nach der Authentifizierungsmethode.
2. Wählen Sie **Microsoft Graph** anstelle der herkömmlichen SMTP-Authentifizierung.
3. Schließen Sie die Änderung erst ab, nachdem Sie die OAuth-Verbindung eingerichtet haben.

## 3. OAuth-Verbindung erstellen

1. Klicken Sie auf **OAuth2 einrichten**.
2. Melden Sie sich mit dem Microsoft-365-Konto an, das Florisoft verwenden soll.
3. Prüfen Sie die angeforderten Berechtigungen.
4. Akzeptieren Sie die Berechtigungen, wenn sie Ihrer Konfiguration entsprechen.
5. Schließen Sie die Anmeldung ab und speichern Sie den Satz **E-Mail-Anmeldedaten**.

Erstellen Sie immer ein neues OAuth-Token, wenn Sie eine vorhandene E-Mail-Konfiguration auf Microsoft Graph umstellen.

## 4. Berechtigungen in Microsoft Entra prüfen

1. Öffnen Sie das Microsoft Entra Admin Center.
2. Suchen Sie die Florisoft-Anwendung, die bei der OAuth-Anmeldung verwendet wurde.
3. Öffnen Sie die Übersicht der erteilten Berechtigungen.
4. Prüfen Sie, ob die angeforderten Microsoft-Graph-Berechtigungen erteilt wurden.
5. Fehlt die Administratorzustimmung, öffnen Sie **Permissions** und wählen Sie **Grant admin consent**.
6. Kontrollieren Sie anschließend, ob die Zustimmung als erteilt angezeigt wird.

> Es kann einige Minuten dauern, bis Änderungen in Microsoft Entra überall wirksam sind.

## 5. Verbindung testen

### E-Mail senden

1. Senden Sie aus Florisoft eine Testnachricht an eine externe E-Mail-Adresse.
2. Prüfen Sie, dass Florisoft keine Fehlermeldung anzeigt.
3. Kontrollieren Sie, ob die Nachricht beim Empfänger eingegangen ist.

### E-Mail empfangen

Wenn Florisoft für Ihren Prozess Nachrichten aus dem Postfach importiert, prüfen Sie, ob eine neue Testnachricht korrekt abgerufen und verarbeitet wird.

## Fehlerbehebung

| Problem | Prüfung |
|---|---|
| Anmeldung oder Autorisierung schlägt fehl | Prüfen Sie, ob Sie das richtige Microsoft-365-Konto verwenden und ob die Administratorzustimmung erteilt wurde. |
| Florisoft zeigt weiterhin einen Authentifizierungsfehler | Erstellen Sie ein neues OAuth-Token und prüfen Sie die Berechtigungen in Microsoft Entra. |
| E-Mails können nicht gesendet werden | Prüfen Sie den ausgewählten Satz **E-Mail-Anmeldedaten**, das verwendete Postfachkonto und die erteilten Berechtigungen. |
| E-Mails können nicht empfangen werden | Prüfen Sie, ob das richtige Postfach und der richtige Satz **E-Mail-Anmeldedaten** verwendet werden und ob die Verbindung Nachrichten abrufen darf. |
| Die Konfiguration funktioniert direkt nach einer Änderung noch nicht | Warten Sie einige Minuten und testen Sie erneut; Änderungen in Microsoft Entra können verzögert verarbeitet werden. |
| Ein `504 Gateway Timeout` wird angezeigt | Versuchen Sie es später erneut. Diese Meldung weist in der Regel auf ein vorübergehendes Netzwerk- oder Verbindungsproblem mit Microsoft Graph hin. |

## Nach Änderungen in Microsoft 365

Erstellen Sie eine neue OAuth-Verbindung, wenn das Postfachkonto, die Zustimmung oder relevante Sicherheitseinstellungen geändert wurden und Florisoft sich nicht mehr anmelden kann. Testen Sie danach erneut das Senden und Empfangen, sofern beide Funktionen in Ihrem Unternehmen verwendet werden.
