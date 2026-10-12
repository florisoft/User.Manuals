# Microsoft Graph API Email

**Microsoft Graph API Email** connects Florisoft to a mailbox in Microsoft 365 or Office 365. Florisoft can use this connection to send email and, where required by your configuration, retrieve messages from the mailbox. Examples include digital invoices, documents, and EKT or EDI messages.

This manual is intended for application administrators who manage both Florisoft and their organisation's Microsoft 365 email domain.

## Requirements

Before you start, make sure that:

- your organisation uses Microsoft 365 or Office 365;
- you have access to the email settings in Florisoft;
- you can sign in with the Microsoft 365 account that Florisoft will use;
- you can manage the Florisoft application and its granted permissions in Microsoft Entra;
- you know which set of **Email login details** must be changed;
- you use a Florisoft version in which **Microsoft Graph** is available. This option is available from version **139.000 / 140.000**.

> **Note:** if you use different mailbox accounts for sending and receiving email, make sure that you change the correct set of **Email login details**.

## 1. Open the email settings

1. Open **Constants** in Florisoft.
2. Go to `System → Email login details`.
3. Open the set of email details that you want to connect to Microsoft Graph.
4. Check the description and the Microsoft 365 account before making any changes.

## 2. Select Microsoft Graph

1. Locate the authentication method in the email configuration.
2. Select **Microsoft Graph** instead of traditional SMTP authentication.
3. Do not finalise the change until you have completed the OAuth connection.

## 3. Create the OAuth connection

1. Click **Set up OAuth2**.
2. Sign in with the Microsoft 365 account that Florisoft will use.
3. Review the requested permissions.
4. Accept the permissions if they match your configuration.
5. Complete the sign-in process and save the set of **Email login details**.

Always create a new OAuth token when you convert an existing email configuration to Microsoft Graph.

## 4. Check the permissions in Microsoft Entra

1. Open the Microsoft Entra admin centre.
2. Find the Florisoft application that was used during the OAuth sign-in.
3. Open the overview of granted permissions.
4. Check that the requested Microsoft Graph permissions have been granted.
5. If administrator consent is missing, open **Permissions** and select **Grant admin consent**.
6. Confirm that the consent is shown as granted.

> It may take several minutes before changes in Microsoft Entra become active everywhere.

## 5. Test the connection

### Sending email

1. Send a test message from Florisoft to an external email address.
2. Check that Florisoft does not display an error.
3. Confirm that the recipient actually receives the message.

### Receiving email

If Florisoft imports messages from the mailbox for your process, check that a new test message is retrieved and processed correctly.

## Troubleshooting

| Problem | Check |
|---|---|
| Sign-in or authorisation fails | Check that you are using the correct Microsoft 365 account and that administrator consent has been granted. |
| Florisoft continues to show an authentication error | Create a new OAuth token and check the permissions in Microsoft Entra. |
| Email cannot be sent | Check the selected set of **Email login details**, the mailbox account, and the granted permissions. |
| Email cannot be received | Check that the correct mailbox and set of **Email login details** are being used and that the connection has permission to retrieve messages. |
| The configuration does not work immediately after a change | Wait several minutes and test again; Microsoft Entra changes may take time to be processed. |
| A `504 Gateway Timeout` appears | Try again later. This message usually indicates a temporary network or connection problem with Microsoft Graph. |

## After changes in Microsoft 365

Create a new OAuth connection if the mailbox account, consent, or relevant security settings have changed and Florisoft can no longer sign in. Then test sending and receiving again, where both functions are used by your organisation.
