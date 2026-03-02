![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)

# Traceability of Lockplates and Trolleys

Due to the value of lockplates and company-owned trolleys, it is essential to maintain a **closed and fully traceable chain**.

When this system is used correctly, an employee can determine at any moment where their lockplates and/or trolleys are located. It is just as easy to identify which employee last handled a specific lockplate. The system provides insight into:

- What has happened to a specific lockplate  
- Which route it has followed  
- How long a specific route took  
- An overview of lockplates per customer  

The software is optimized for use on a **PDA**, but registration is also possible on a **regular PC equipped with a scanner**.

The lockplate administration is influenced by a combination of:
1. System settings  
2. Packaging type (fust) settings  
3. User settings (FS2000 / Inifile)  

Below is an overview of the relevant settings and where they are managed.

---

## Configuration and Settings

In practice, lockplate administration is often closely related to company-specific workflows. The settings below have a proven impact on the lockplate administration and related processes.

---

## 1. System Settings

These system settings are currently set to a **default configuration**.  
If any of these settings need to be changed, please contact the **support department**.

- **SlotPlaatAlsFustOpFactuur**  
  Determines whether scanned lockplates (IN/OUT) are added to an invoice as packaging (fust) lines. This also affects order number behavior and credit lines, depending on the process.

- **SlotPlaatNooitDubbelUitgeven**  
  When enabled, a lockplate may not be issued *OUT* again until it has first been registered *IN*.

- **SLOTPLATENNADOOSVULLEN / SlotplatenNaDoosvullen**  
  Influences system behavior after box filling and controls/handling when a lockplate is scanned again during *Box Filling*.

- **SLOTPLAATREGISTRATIEDOOSVUL**  
  Used to automatically open the lockplate registration screen after box filling (in combination with `SLOTPLATENNADOOSVULLEN`).

- **PDADoosvulDoosAanpasDubSlotplt**  
  When enabled, the **“Adjust Box”** screen is automatically shown during PDA box filling if a lockplate is scanned that has already been issued and not yet checked in.

- **AlternatieveFustcodePrefix**  
  If populated, a barcode with this prefix is interpreted as a lockplate number during box filling, and the associated packaging type is retrieved.

- **AutomatischKarlijstPrintenBox**  
  Influences automatic printing and completion within Box and Box Filling flows (indirectly relevant when lockplate scans are part of these flows).

- **FactuurHerverdCheckIngepakt**  
  Not strictly part of lockplate administration, but it may affect scenarios where packed lines or redistribution impact the link to a lockplate.

---

## 2. Packaging Type (Fust) Settings  
*Constants → Articles → Packaging Types*

- **Automatically register as lockplate**  
  Ensures that a used packaging code (in specific flows) is automatically registered as a lockplate.

- **Start lockplate registration after printing from box filling**  
  Automatically starts lockplate registration after printing from box filling (in combination with the correct system settings).

- **Lockplate recognition in box filling**  
  Determines whether a packaging code is treated as a *lockplate* in box filling. This is a prerequisite for several controls and system behaviors.

---

## 3. Other Constants settings

- **Constants → General → Lockplate Number**  
  Used in combination with the system setting `AlternatieveFustcodePrefix`. This defines which lockplate number belongs to a specific packaging type.

---

## 4. User Settings (FS2000)  
*Constants → Users → Activate User → Inifiles*

- **OrderNummerSlotplaat (FS2000)**  
  Determines which order number is used for (credit) invoice lines originating from the lockplate flow.

- **DoosVullenFustCodes (FS2000)**  
  A per-user list of allowed packaging codes in box filling. This also determines whether a user is allowed to use lockplates (as packaging) during box filling.
