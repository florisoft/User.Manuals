<img src = "../../fslogo.png" alt = "Florisoft logo">

# Manual Creating Anonymous Debtors

## Introduction

This tutorial is about creating anonymous debtors. For example, an anonymous debtor can see the stock in the shop, but not the prices. Think of it as a kind of guest account.

|Step|Explanation.
|:--|:--|
|**1**| Open the Constants in Florisoft by clicking on the icon below<details><summary>**Click here for the sample image**</summary><img src=".anonymous/photo1.png"></details>| 
|**2**| Open the Debtors tab via Organen (#1) -> Debtors (#2)
|**3**| Click once in the column 'Deb. No.'<details><summary>**Click here for the sample image**</summary><img src=".anonymous/photo2.png"></details>|. 
|**4**| Type in the search field **__anon__** and press **Enter** or click the **search** button (#5)
|**5**| If an anonymous debtor exists in the system it will now be displayed as a result in the list of debtors (#6)

<br>

:note: If an anonymous debtor is not found, it must be created.

|Step|Explanation.
|:--|:--|
|**1**| Click the **Add new item** button on the **Debtors** tab of the **Constants** window. The **Debtors window :** will open<details><summary>**Click here for the sample image**</summary><img src=".anonymous/photo3.png"></details>|. 
|**2**| On the **Addresses** tab in the **Debtors :** window, enter the following information:<details><summary>**Click here for the sample image**</summary><img src=".anonymous/photo4.png"></details>| 1= ANON, 2= ANON - 3= Anonymous Debtor

-----

|Step|Explanation.
|:-:|:--|
|**1**|Navigate to the **Internet** tab (#1) -> **Internet access** (#2) and check the "This customer has Internet access" (#3) and "This customer is allowed to log into Florisoft" (#4)|.
|**2**|Enter the value **ANON!** in the "Password for the customer" field (#14)<details><summary>**Click here for the sample image**</summary><img src=".anonymous/photo5.png"></details>
|**3**|Click the 'Accessible Stocks' button (#5) in the 'Debtors' window. The 'Stocks on Internet Sales' window opens. Continue reading on the next page.|
|**4**|<details><summary>**Click here for the sample image**</summary><img src=".anonymous/photo6.png"></details>|
|**5**|Tick the 'A' and 'R' checkboxes for the stocks you want to make accessible through the webshop.<details><summary>**Click here for the sample image**</summary><img src=".anonymous/photo7.png"></details>|
:note: enter "-100,000" in the "PERC" column here. This way, the anonymous debtor cannot see a price on this particular stock. That person will only see "---"

In the above example, for the stocks TEST, BLOEM, DECO and TEST17, the checkmarks "A" and "R" are checked. This means that these stocks are visible to the anonymous debtor.

The checkmark 'T' (#21) determines whether the debtor is allowed to buy through the webshop. As a rule, the anonymous debtor is never allowed to buy through the webshop.


|Step|Explanation|
|:--|:--|
|**1**| Select the checkbox 'T' for the relevant stocks. :warning:Please note that for stocks used in conjunction with WhatsApp sharing, always check boxes A and R are selected and check box T - is unchecked.
|**2**|Click 'Ok' (#1) in the 'Stocks on Internet Sales' window to confirm the changes to the stock authorization for the anonymous debtor. <details><summary>**Click here for the sample image**</summary><img src=".anonymous/photo8.png"></details>
|**3**|Click the "OK" button in the window **Debtors: ANON" to confirm all settings

<br>

The anonymous debtor has now been created with the correct settings regarding authorization

