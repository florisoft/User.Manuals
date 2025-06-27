![image](https://github.com/user-attachments/assets/8e9c7f74-e147-40ec-8c9c-39bf924a08fb)


# ❓ FAQ – Migration to Microsoft Azure

### 1. How does the migration process of an ERP system to Azure work?  
The process generally consists of 6 steps, divided over 2 phases:  

**Phase 1:**  
- inventory  
- technical migration  
- configuration  
- testing phase  

**Phase 2:**  
- go-live  
- verification  

A detailed step-by-step plan is prepared in advance, clearly stating what each step entails and who is responsible for its execution.

---

### 2. What is the average lead time for a migration to Azure?  

The duration depends on the scope, complexity, and degree of customization.  
**Phase 1** is usually completed within 0.5 to 1 day and **Phase 2** takes about 0.5 day.   
Phases 1 and 2 should follow each other within a reasonable timeframe to avoid discrepancies in data and configuration changes.

---

### 3. What preparatory actions are required on the customer side?  
At least 2 weeks before the migration, the Florisoft system must be updated with the latest available update and rolled out to all users.  

It is also very important that **the customer performs thorough testing** as the final step of Phase 1.  

This includes:  
- user login  
- daily processes  
- printer functionality  
- etc.  

Any issues found must be resolved and retested before starting Phase 2.

---

### 4. What is the impact on daily operations during the migration?  
The impact is minimized as much as possible. Any disruptions are coordinated and scheduled in advance. <br>
If issues arise during testing in **Phase 1**, they will be resolved before starting Phase 2. <br>
Note: During **Phase 2** all Florisoft components are **temporarily offline**, including the webshop. <br>
Preparation on the customer side is necessary (for example printing stickers, preparing orders, etc.).

---

### 5. Is there downtime during the migration?  
Limited planned downtime is necessary during the go-live (Phase 2).   
This is coordinated in advance and minimized where possible.   
Please note that during Phase 2 **all Florisoft components will be temporarily offline**, including the webshop.  
To reduce the impact, preparations such as printing stickers and preparing orders can be made in advance.

---

### 6. How is data security ensured during the migration?  
Data is migrated via encrypted connections and secure protocols. Validation checks are performed to guarantee completeness and accuracy.

---

### 7. Which parts of the ERP system are included in the migration?  
By default, this includes structured data, system configurations, user settings, reports, and any custom components. The exact scope is defined in advance. <br>  
Note: This concerns all parts related to the Florisoft package. If own files or folders need to be transferred, this must be clearly indicated beforehand.

---

### 8. Is the ERP system tested before go-live?  
The customer is responsible for testing at the end of **Phase 1**. <br> 
Any issues must be resolved before starting **Phase 2**.

---

### 9. How is business continuity ensured during the migration?  
A schedule is made that takes critical processes into account.   
Therefore, it is very important to deviate from the planning **as little as possible**. <br>
The migration can be postponed up to 3 weeks before Phase 1.

---

### 10. Is a rollback possible if problems occur during migration?  
Yes. A fallback or rollback plan is prepared in advance, so that in case of unforeseen problems, a quick switch back to the original situation is possible.

---

### 11. What support is available after go-live?  
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

