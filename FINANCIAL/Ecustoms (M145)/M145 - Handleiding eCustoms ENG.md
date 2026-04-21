<img src="../../fslogo.png"/>

# eCustoms Manual

# Table of Contents

[eCustoms Proxy Settings](#ecustoms-proxy-settings)

[Set Up eCustoms Carrier](#set-up-ecustoms-carrier)

[Set Up eCustoms Transport Route](#set-up-ecustoms-transport-route)

[eCustoms Debtor Settings](#ecustoms-debtor-settings)

[Set Up eCustoms Financial Administration](#set-up-ecustoms-financial-administration)

[Create Incoterms and eCustoms Settings](#create-incoterms-and-ecustoms-settings)

[eCustoms Article Group Split Code Settings](#ecustoms-article-group-split-code-settings)

[eCustoms Packaging Settings](#ecustoms-packaging-settings)

[Packaging Split Code Settings](#packaging-split-code-settings)

[eCustoms Currency Settings](#ecustoms-currency-settings)

[eCustoms Country Settings](#ecustoms-country-settings)

[eCustoms Timers (Optional)](#ecustoms-timers-optional)

#

# eCustoms Proxy Settings

For each proxy type, one set of settings can be stored in the
**Constants**. So if you work with multiple parties, you need to fill in
this proxy multiple times. Here you can enter the proxy details.

**Navigator → Constants → System → eCustoms Proxy Settings → Codes → Open Setting**

Enter the details belonging to the selected proxy type. Not all fields
are required for every proxy. Depending on the selected proxy, the
required fields will become active.

- **Base URL:** base URL of the proxy

  - **LBP:** FTP address of the proxy

- **Username:** username of the proxy

- **Password:** password belonging to the username

- **ClientID:** client code so the external package can identify where
  the request comes from

  - **CSI Fresh:** ownerCode as provided by CSI

  - **Vd Luyt:** customer number as provided by Vd Luyt

- **Profile code:** profile code indicating which services are used

- **Follow-up proxy base URL:** after the export declaration, an import
  declaration can be submitted directly in the UK (**CSI Fresh only**)

- **Follow-up proxy username:** after the export declaration, an import
  declaration can be submitted directly in the UK (**CSI Fresh only**)

- **Follow-up proxy password:** after the export declaration, an import
  declaration can be submitted directly in the UK (**CSI Fresh only**)

- **Attachment email address:** email address to which the attachments
  for a request can be emailed (currently only for **CSI Fresh**. The
  email address must be provided by CSI Fresh)

<img src=".Handleiding%20eCustoms/media/image2.png" style="width:8.8375in;height:3.60972in" />

# Set Up eCustoms Carrier

For each carrier, it can be specified which eCustoms provider should be
used when exporting the customs declaration. If no choice is made for
the carrier, the system will fall back to the default.

**Navigator → Constants → Community → Carriers → Open Carrier → tab “eCustoms”**

Here, the desired eCustoms provider must be entered.

<img src=".Handleiding%20eCustoms/media/image3.png" style="width:7.7093in;height:5.1886in" />

# Set Up eCustoms Transport Route

For each transport route, a number of values can be entered that should
be used when that specific transport route is linked to the invoice.

**Navigator → Constants → Statistics → Transport Route → Open Transport Route → tab “eCustoms”**

- **Office of Exit:** *Code of the customs office where the goods leave
  the EU. If filled in, this overrides the value in the system
  settings.*

- **Office of Destination:** *Code of the customs office where the goods
  are going outside the EU. If filled in, this overrides the value in
  the system settings.*

- **Country of Dispatch:** *Country from which the goods are shipped.*

- **Sending debtor:** *If you are not shipping yourself, but for example
  via an LTD in England that also exists as a debtor in the constants.*

- **Place of Loading:** *Location where loading takes place.*

- **Agreed Location of Goods:**

  - *LBP: postal code and house number where the goods depart.*

  - *CSI Fresh: locationCode as provided by CSI.*

- **Returns debtor:** *Debtor number on which the returns of this route
  are processed.*

- **(Checkbox) This transport route can be selected when grouping
  customs invoices:**  
  *If checked, this route can be selected in the customs grouping
  screen. If none are checked, all routes can be selected.*

- **Loading port:** *UN/LOCODE where the goods are loaded. UN/LOCODEs
  are maintained by UNECE.  
  (only applicable to LBP)*

- **Destination port:** *UN/LOCODE where the goods are unloaded.
  UN/LOCODEs are maintained by UNECE.  
  (only applicable to LBP)*

<img src=".Handleiding%20eCustoms/media/image4.png" style="width:7.83235in;height:5.42641in" />

# eCustoms Debtor Settings

There are two types of debtors that need to be configured: the
**consolidation debtor** and the **end customers**. The consolidation
debtor is the debtor on which the total invoice is created (**LTD
debtor**). The end customers are linked to this consolidation debtor so
that one invoice is created. The debtor type can be configured here:

**Navigator → Constants → Community → Debtor Data → Debtors → Open Debtor → tab Invoice → Customs**

**If it is a consolidation debtor, configure the following:**

- **EORI number:** *The EORI number of the debtor. This is required for
  the customs declaration.*

- **Debtor is customs consolidation debtor:** *If checked, this debtor
  can be selected as the customs consolidation debtor. A vehicle invoice
  can ultimately be created for this debtor and the customs declaration
  can be submitted.*

**If it is an end customer, configure the following:**

- **Customs consolidation debtor:** *Debtor number on which the vehicle
  invoices for the declaration are created. If a declaration is
  submitted separately for each debtor, this field must remain empty.*

<img src=".Handleiding%20eCustoms/media/image5.png" style="width:8.475in;height:6.3in" />

# Set Up eCustoms Financial Administration

A separate **Financial Administration** must be created for both debtors
(**Consolidation** and **End Customer**). The end customers will invoice
the LTD, and this will be done through the English (**LTD**)
administration. The consolidation debtor will invoice the Dutch
administration. Make sure that the financial administration is correctly
configured for the different debtor types. A Financial Administration
can be created here:

**Navigator → Constants → Financial → Financial Administration → Create Administration**

Linking the debtor to the different administrations can be done here:

**Navigator → Constants → Community → Debtor Data → Debtors → Open Debtor → tab Financial Administration**

<img src=".Handleiding%20eCustoms/media/image6.png" style="width:8.8375in;height:6.19306in" />

# Create Incoterms and eCustoms Settings

For the **consolidation** debtor, you must also indicate which Incoterms
are linked to the debtor. The Incoterm codes must comply with this
[list](https://www.belastingdienst.nl/codeboek_sagitta/huidig/html/tabel-codeboek%20sagitta%2C%20onderdeel%20algemeen-a14.html)
and can be created here:

**Navigator → Constants → Statistics → Incoterms → Create Incoterm**

You can then link the Incoterm to the consolidation debtor here:

**Navigator → Constants → Community → Debtor Data → Debtors → Open Debtor → tab Transport → Incoterms**

<img src=".Handleiding%20eCustoms/media/image7.png" style="width:8.27986in;height:6.3in" />

# eCustoms Article Group Split Code Settings

For each article group, the split codes must be entered for the
countries to which goods are exported. Here you can enter the split
codes per country at article-group level.

**Navigator → Constants → Articles → Article Information → Article Groups → Open Article Group → tab General → Open Country Specific**

<img src=".Handleiding%20eCustoms/media/image8.png" style="width:8.64475in;height:6.07216in" />

# eCustoms Packaging Settings

For each packaging code, a **Customs packaging code** must be entered.
The code of the packaging must comply with the customs requirements. If
this is not filled in, the customs request will not be submitted. Here
is a list of the customs packaging codes you can use:
[Customs packaging codes](https://www.belastingdienst.nl/codeboek_sagitta/huidig/html/tabel-codeboek%2C%20onderdeel%20aangiftebehandeling-a25.html).

You can link the code to the different packaging codes here:

**Navigator → Constants → Articles → Package Information → Open Packaging Code → tab eCustoms → enter Customs packaging code**

<img src=".Handleiding%20eCustoms/media/image9.png" style="width:7.8636in;height:5.78053in" />

# Packaging Split Code Settings

For the packaging, the split code for the destination country must be
entered. This can be done in the following location:

**Navigator → Constants → Articles → Package Information → Open Packaging Code → tab Packaging → Open Country Specific**

Here, the split code can be entered per country and per packaging type.

<img src=".Handleiding%20eCustoms/media/image10.png" style="width:6.42778in;height:6.3in" />

# eCustoms Currency Settings

For each currency you use, the **static conversion** must be filled in.
The correct currency must be selected here. The static conversion
currency contains the ISO currency code required for export and the
customs declaration. The static conversion can be entered here:

**Navigator → Constants → Financial → Currency Codes → Open Currency → tab Currency → fill in Static Conversion**

<img src=".Handleiding%20eCustoms/media/image11.png" style="width:7.14494in;height:4.98896in" />

# eCustoms Country Settings

For the countries used, the **static conversion** must be filled in. The
static conversion country contains the ISO country code required for
export and the customs declaration. The value can be entered per country
here:

**Navigator → Constants → Locations → Regions → Countries → Open Country → tab General → fill in Static Conversion**

<img src=".Handleiding%20eCustoms/media/image12.png" style="width:7.60764in;height:6.3in" />

# eCustoms Timers (Optional)

The following timer processes are available for eCustoms:

**eCustoms Create Packaging Invoices**

This can be used to create packaging invoices for the return trip. A CSV
containing packaging information is taken from an email, an invoice is
created for customs, and credit invoices are created per debtor. The
customs invoice is finalized and a customs request is submitted to the
specified eCustoms proxy.

**eCustoms Retrieve Result**

This checks whether the submitted request is already completed and
whether an NRM number is available. Depending on the proxy, information
is retrieved and processed in Florisoft. This timer process
automatically runs through all proxies entered in the constants.

<u>Below, we describe the steps for both timer functions.</u>

For the first timer function **“eCustoms Create Packaging Invoices”**,
an Excel template must be created.

The template type must be **“Customs packaging invoice”**, and all 4
fields are mandatory. Otherwise, there is insufficient information for
the customs document. The template can be created here in the constants:

**Navigator → Constants → System → Excel Template → Open or Create Excel Template**

<img src=".Handleiding%20eCustoms/media/image13.png" style="width:8.2698in;height:5.65554in" />

# eCustoms Timers

The value of **“transport route no.”** must be an existing transport
route in the constants. This must be a separate transport route with the
correct data (*a route leaving the UK*). You can create the route here:

**Navigator → Constants → Statistics → Transport Route → Create Transport Route → tab “eCustoms”**

Below is a short explanation of what is expected in each field:

- **Office of exit:** customs office number when leaving the UK

- **Office of destination:** customs office number when entering the EU

- **Country of dispatch:** UK

- **Sending debtor:** often an LTD in the UK

- **Place of loading:** location where the packaging is located at the
  moment of the customs request

- **Returns debtor:** your own company, where the packaging must be
  returned in the Netherlands

<img src=".Handleiding%20eCustoms/media/image14.png" style="width:7.83235in;height:5.42641in" />

# eCustoms Timers

Then a timer setting must be enabled to perform the action. This can be
done at the following location:

**Navigator → Timer Settings** *(right-click on the Timer icon)*  
**Timer Settings → choose setting “eCustoms Create Packaging Invoices” → enter settings**

Here is an explanation of the settings you need to fill in:

- **Template for importing packaging data:** the Excel template created
  above

- **POP server address:** mail server address from which the email with
  packaging data can be retrieved

- **POP server userid:** userid of the mail server

- **POP server password:** password of the mail server

- **SSL:** whether SSL must be used to retrieve the mail

- **Error email address:** the email address to which an email should be
  sent if errors occur. The detected errors are shown in bold in the
  email. If the timer process is executed manually, an email is always
  sent with the status information of the process, regardless of whether
  errors occur in the process.

- **Send the packaging invoices to the eCustoms proxies:** if it is not
  desired to send the packaging invoices to the customs proxy, this
  setting can be turned off. By default, this is enabled. All other
  steps, such as creating customer and customs invoices, will still be
  carried out.

<img src=".Handleiding%20eCustoms/media/image15.png" style="width:8.8375in;height:5.67083in" />

# eCustoms Timers

For the second timer function **“eCustoms Retrieve Result”**, nothing
special needs to be configured apart from the timer setting. This checks
whether the submitted request is already completed and whether an NRM
number is available. Depending on the proxy, information is retrieved
and processed in Florisoft. This timer process automatically runs
through all proxies entered in the constants. For each proxy for which
it is possible to retrieve results, it is checked whether results are
available. This is updated in the **Customs Invoices overview**. More on
that later. The timer setting can be enabled here:

**Navigator → Timer Settings** *(right-click on the Timer icon)*  
**Timer Settings → choose setting “eCustoms Retrieve Result” → enter settings**

<img src=".Handleiding%20eCustoms/media/image16.png" style="width:8.8375in;height:5.67083in" />
