<img src="../../fslogo.png"/>

# Manual Server Stock Component (SVC)

Welcome to the manual for the module Server Stock Component. SVC is used to offer your stock to other organisations so they can buy from stock in realtime. This module synchronises your stock between organisations within your own backoffice system.

## Setting up
The first step when installing the SVC, is to determine the stock distribution.
This way you can per stock create a seperate debtor to split stock at the receiving party.
You can also choose to creat groupings, for example a debtor for all Flowers, Plants and Decorations (or something similar).

Start with making a new debtor, is it useful to first make a template debtor if you are making multiple debtors..
Go to constants -> Community -> Debtor data -> Debtors, then klick on the plus sign.

<img src =".Server voorraad component EN/media/image1.png"/>

Enter at least the Deb.number, Search and Companyname. Make sure the names are clear, specifically what this debtor does. Another person may look at this in the future and needs to be able to figure out what this does.

<img src =".Server voorraad component EN/media/image2.png"/>

Choose the type of webservice here, if the receiving end is also a Florisoft user, the Florisoft webservice should be used.

<img src =".Server voorraad component EN/media/image3.png"/>

In the 'Server' tab, the option 'Save end customer as a comment and not link to debtor' can be selected. This means that if the receiving customer lets several customers buy on the webshop. the subdebtor is included as a comment on the invoice.

<img src =".Server voorraad component EN/media/image4.png"/>

Under Internet -> Internet acces, the 1st and 3rd checkbox should be on. you can then allocate the stocks that this debtor wll send. Here the checkboxes A and T should be checked.

Finally, the link shoudl be send to the receiving party. This is the standard webshop link with '/service.asmx' pasted behind it. 
This allowes for the receiving party to receive the stock. 