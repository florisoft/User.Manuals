![image](https://github.com/user-attachments/assets/8e9c7f74-e147-40ec-8c9c-39bf924a08fb)


# ❓ FAQ – Migration to Microsoft Azure

### 1. How does the migration process of Florisoft.net to Azure work?  
The process generally consists of 6 steps, divided over 2 phases:  

**Phase 1:**  
- inventory  
- technical migration  
- configuration  
- testing phase  

**Phase 2:**  
- go-live  
- verification  

---

### 2. What is the average lead time for a migration to Azure?  

The duration depends on the scope and complexity.
**Phase 1** is usually completed within half a day to one full day and **Phase 2** takes about half a day.   
Phases 1 and 2 should follow each other within a reasonable timeframe to avoid issues caused by version discrepancies.

---

### 3. What preparatory actions are required on the customer side?  
At least 2 weeks before the migration, the Florisoft system must be updated with the latest available update and rolled out to all users.  

It is also very important that **the customer performs thorough testing** as the final step of Phase 1.  

This includes:  
- user login   
- printer functionality
- integrations with external applications
- connections that previously required a VPN connection
- accessibility of storage accounts  
- etc.  

Any issues found must be resolved and retested before starting Phase 2.

---

### 4. What is the impact on daily operations during the migration?  
The impact is minimized as much as possible. Any disruptions are coordinated and scheduled in advance. <br>
During Phase 1, business operations will not be affected. <br>
If issues arise during testing in **Phase 1**, they will be resolved before starting Phase 2. <br><br>
**Phase 2:**
Note: During **Phase 2** all Florisoft components are **temporarily offline**, including the webshop. <br><br>
After completing Phase 1, the duration of Florisoft's offline period during Phase 2 will be known. <br>
This downtime is expected to be no longer than half a day, and in many cases, shorter.<br>
Preparation on the customer side is necessary (for example printing stickers, preparing orders, etc.).

---

### 5. Is there downtime during the migration?  
During Phase 1, business operations will not be affected, so this phase will have no downtime.<br>
Limited planned downtime is necessary during the go-live (Phase 2).<br>
This is coordinated in advance and minimized where possible.<br>
<br>
Please note that during Phase 2 **all Florisoft components will be temporarily offline**, including the webshop.  <br>
After completing Phase 1, the duration of Florisoft's offline period during Phase 2 will be known. <br><br>
This downtime is expected to be **no longer than half a day, and in many cases, shorter.**<br>
Preparation on the customer side is necessary (for example printing stickers, preparing orders, etc.).<br>
To reduce the impact, preparations such as printing stickers and preparing orders can be made in advance.

---

### 6. How is data security ensured during the migration?  
Data is migrated via encrypted connections and secure protocols.

---

### 7. Which parts of Florisoft.net are included in the migration?  
By default, this includes structured data, system configurations, user settings, reports, and any custom components. <br>
Note: This concerns all parts related to the Florisoft package. If own files or folders need to be transferred, this must be clearly indicated beforehand.

---

### 8. Is Florisoft.net tested before go-live?  
The customer is responsible for performing tests at the end of **Phase 1**.<br>
Any issues identified must be resolved before **Phase 2** can begin.<br>
<br>
During the migration, each step is carefully monitored to ensure that the Florisoft system functions correctly from a technical perspective.<br>
However, after go-live, it is the customer's responsibility to test Florisoft.net again in practice.<br>

---

### 9. How is business continuity ensured during the migration?  
A schedule is made that takes critical processes into account.   
Therefore, it is very important to deviate from the planning **as little as possible**. <br>

---

### 10. Is a rollback possible if problems occur during migration?  
Yes. A fallback or rollback plan is prepared in advance, so that in case of unforeseen problems, a quick switch back to the original situation is possible.<br>
The original environment will remain fully intact until at least one day after the go-live. After that, it will be phased out as soon as possible.

---

### 11. What support is available after go-live?  
During and directly after the migration process You can contact the designated Florisoft representative.<br>
Any issues or incidents can be reported to Florisoft’s support department.   
Support staff will ensure a quick and adequate handling of reports.   
Depending on the nature and urgency of the incident, a suitable solution will be offered. <br>  
In case of process-blocking issues, the emergency service can be used.  
All other questions can be reported via the regular channels.

---

### 12. What’s different about backups and updates in Azure?  
**Azure Backup** enables multiple daily backups without impacting performance or availability. <br>
These backups are stored in Azure storage locations. This method of management significantly increases data security.<br>
Operating system **updates** and security patches can be performed automatically, keeping servers protected without the need for manual intervention.

---

### 13. Is it possible to reschedule the migration?
Rescheduling a migration is possible in consultation, but preferably only **if absolutely necessary**.<br>
Changes can affect our planning and the availability of the migration team.<br>
<br>
If rescheduling is required, please inform us at least 3 weeks in advance whenever possible.<br>
For changes made within 3 weeks of the planned date, we may need to charge additional costs, for example due to already allocated resources.<br>
