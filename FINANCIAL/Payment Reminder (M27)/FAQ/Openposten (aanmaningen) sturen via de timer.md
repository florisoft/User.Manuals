# Timerproces 'Openposten sturen'

Het timerproces **'Openposten sturen' (OPENPOSTENLIJST)** biedt de mogelijkheid om bij de uitvoering van dit proces per nieuwe openpost automatisch een regel aan te maken in de tabel **AANMANING**. Daarnaast worden de velden **MANEN1** tot en met **MANEN5** in de openstaande post gevuld.

## Voorwaarden voor gebruik

Om dit proces correct te laten functioneren, moeten de volgende voorwaarden worden voldaan:

1. **Gebruik van verwerkdagen bij openstaande posten**  
   Zorg ervoor dat er gebruik wordt gemaakt van verwerkdagen. Dit kan worden ingesteld door de bestaande systeeminstelling **TimerOpenpostLijstDebiteurVia** te configureren op **DebiteurOpenpostVerwerkDagen**.

2. **Actieve module 'Aanmanen'**  
   De module **Aanmanen** moet geactiveerd zijn.

3. **Systeeminstelling activeren**  
   De systeeminstelling **OpenPostenLijstOpslaanAanmaning** moet ingeschakeld zijn. Deze instelling kan worden geconfigureerd in de instellingen van de timer:

   ![image](https://github.com/user-attachments/assets/55f5b284-25ca-46da-b292-05db6ecf7812)

## Functionaliteit

Bij uitvoering van het timerproces worden de volgende acties uitgevoerd:

- **Tabel AANMANING**  
  Voor elke nieuwe openpost wordt automatisch een regel aangemaakt in de tabel **AANMANING**.

- **Vullen van MANEN1 tot en met MANEN5**  
  De velden **MANEN1** tot en met **MANEN5** van de openstaande post worden gevuld op basis van de ingestelde verwerkdagen. Deze verwerkdagen worden bepaald door de constanten die zijn ingesteld voor de debiteur (**DAGKOPKEY**).

  ![image](https://github.com/user-attachments/assets/486dd6ef-21e2-4403-a081-d91372a2f414)

## Configuratieoverzicht

| Instelling                               | Waarde                           | Beschrijving                                                   |
|------------------------------------------|-----------------------------------|---------------------------------------------------------------|
| **TimerOpenpostLijstDebiteurVia**        | DebiteurOpenpostVerwerkDagen     | Verwerkdagen gebruiken bij openstaande posten.                |
| **Module Aanmanen**                      | Actief                           | Vereist om aanmaningsregels aan te maken.                     |
| **OpenPostenLijstOpslaanAanmaning**      | Ingeschakeld                     | Maakt regels in tabel AANMANING en vult de velden MANEN1-5.   |

## Toepassing

Dit proces is bedoeld om het beheer van openstaande posten te optimaliseren door automatische aanmaningen te genereren en relevante velden consistent te vullen op basis van debiteurinstellingen. Controleer vooraf dat alle benodigde instellingen correct zijn geconfigureerd om de functionaliteit te activeren.
