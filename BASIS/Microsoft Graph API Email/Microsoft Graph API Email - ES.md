# Microsoft Graph API Email

**Microsoft Graph API Email** conecta Florisoft con un buzón de Microsoft 365 u Office 365. Florisoft puede utilizar esta conexión para enviar correos electrónicos y, cuando la configuración lo requiera, recuperar mensajes del buzón. Algunos ejemplos son las facturas digitales, los documentos y los mensajes EKT o EDI.

Este manual está dirigido a administradores de aplicaciones que gestionan tanto Florisoft como el dominio de correo de Microsoft 365 de su organización.

## Requisitos

Antes de comenzar, asegúrese de que:

- su organización utiliza Microsoft 365 u Office 365;
- tiene acceso a la configuración de correo electrónico en Florisoft;
- puede iniciar sesión con la cuenta de Microsoft 365 que utilizará Florisoft;
- puede gestionar la aplicación Florisoft y los permisos concedidos en Microsoft Entra;
- sabe qué conjunto de **datos de inicio de sesión de correo electrónico** debe modificar;
- utiliza una versión de Florisoft en la que **Microsoft Graph** está disponible. Esta opción está disponible a partir de la versión **139.000 / 140.000**.

> **Nota:** si utiliza distintas cuentas de buzón para enviar y recibir correo, asegúrese de modificar el conjunto correcto de **datos de inicio de sesión de correo electrónico**.

## 1. Abrir la configuración de correo electrónico

1. Abra **Constantes** en Florisoft.
2. Vaya a `Sistema → Datos de inicio de sesión de correo electrónico`.
3. Abra el conjunto de datos de correo electrónico que desea conectar con Microsoft Graph.
4. Compruebe la descripción y la cuenta de Microsoft 365 antes de realizar cambios.

## 2. Seleccionar Microsoft Graph

1. Localice el método de autenticación en la configuración de correo electrónico.
2. Seleccione **Microsoft Graph** en lugar de la autenticación SMTP tradicional.
3. No finalice el cambio hasta que haya completado la conexión OAuth.

## 3. Crear la conexión OAuth

1. Haga clic en **Configurar OAuth2**.
2. Inicie sesión con la cuenta de Microsoft 365 que utilizará Florisoft.
3. Revise los permisos solicitados.
4. Acepte los permisos si se ajustan a su configuración.
5. Complete el inicio de sesión y guarde el conjunto de **datos de inicio de sesión de correo electrónico**.

Cree siempre un nuevo token de OAuth cuando convierta una configuración de correo existente a Microsoft Graph.

## 4. Comprobar los permisos en Microsoft Entra

1. Abra el centro de administración de Microsoft Entra.
2. Busque la aplicación Florisoft que se utilizó durante el inicio de sesión de OAuth.
3. Abra el resumen de permisos concedidos.
4. Compruebe que se hayan concedido los permisos de Microsoft Graph solicitados.
5. Si falta el consentimiento del administrador, abra **Permissions** y seleccione **Grant admin consent**.
6. Confirme que el consentimiento aparece como concedido.

> Los cambios en Microsoft Entra pueden tardar varios minutos en estar activos en todas partes.

## 5. Probar la conexión

### Enviar correo electrónico

1. Envíe desde Florisoft un mensaje de prueba a una dirección de correo externa.
2. Compruebe que Florisoft no muestre ningún error.
3. Confirme que el destinatario reciba el mensaje.

### Recibir correo electrónico

Si Florisoft importa mensajes del buzón para su proceso, compruebe que un nuevo mensaje de prueba se recupere y procese correctamente.

## Solución de problemas

| Problema | Comprobación |
|---|---|
| Falla el inicio de sesión o la autorización | Compruebe que utiliza la cuenta correcta de Microsoft 365 y que se ha concedido el consentimiento del administrador. |
| Florisoft sigue mostrando un error de autenticación | Cree un nuevo token de OAuth y compruebe los permisos en Microsoft Entra. |
| No se pueden enviar correos electrónicos | Compruebe el conjunto seleccionado de **datos de inicio de sesión de correo electrónico**, la cuenta del buzón y los permisos concedidos. |
| No se pueden recibir correos electrónicos | Compruebe que se utilizan el buzón y el conjunto de **datos de inicio de sesión de correo electrónico** correctos y que la conexión tiene permiso para recuperar mensajes. |
| La configuración no funciona inmediatamente después de un cambio | Espere unos minutos y vuelva a probar; los cambios en Microsoft Entra pueden tardar en procesarse. |
| Aparece un `504 Gateway Timeout` | Vuelva a intentarlo más tarde. Este mensaje suele indicar un problema temporal de red o de conexión con Microsoft Graph. |

## Después de realizar cambios en Microsoft 365

Cree una nueva conexión OAuth si se han modificado la cuenta del buzón, el consentimiento o la configuración de seguridad relevante y Florisoft ya no puede iniciar sesión. Después, vuelva a probar el envío y la recepción si su organización utiliza ambas funciones.
