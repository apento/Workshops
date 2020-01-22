# Windows Virtual Desktop Workshop
Microsoft Lyngby - 21. January 2020

This site contains links and content from the workshop.

# STUDENT EVALUTION LINK 
Kom gerne med jeres feedback. Nu er det første gang denne workshop er afholdt og holdet er godt blandet mellem både SMB og Enterprise segmentet.<br>
https://globalknowledge.az1.qualtrics.com/jfe/form/SV_2l9xxtKvLOyJCKN?EVENTID=DK61419 



# Windows Virtual Desktop Documentation
Tenant and host pool creation:<br> https://docs.microsoft.com/en-us/azure/virtual-desktop/troubleshoot-set-up-issues<br>
<br>Subscritpion CPU limitation:<br>https://github.com/MicrosoftDocs/azure-docs/pull/41360
<br>Tenant creation link:<br> https://docs.microsoft.com/en-us/azure/virtual-desktop/tenant-setup-azure-active-directory#create-a-windows-virtual-desktop-tenant
<br>Consent page:<br> https://rdweb.wvd.microsoft.com/
<br>RTT Estimator:<br> https://azure.microsoft.com/en-us/services/virtual-desktop/assessment/

# WVD Web Clients: 
https://rdweb.wvd.microsoft.com/webclient/index.html

# AzurePass
Claim your Azure Passcode credits here:<br>
https://www.microsoftazurepass.com/<br>
https://www.microsoftazurepass.com/Home/HowTo?Length=5

# Microsoft Demo site for Partners:
https://cdx.transform.microsoft.com/

# Office 365 E3 Trial creation:
https://signup.microsoft.com/Signup?OfferId=B07A1127-DE83-4a6d-9F85-2C104BDAE8B4&dl=ENTERPRISEPACK&ali=1

# Deployment steps:
 
 1. Opret trial account Office 365 E3 eller via demo.microsoft.com
 2. Tilknyt Azure Pass til kontoen
 3. Opret Azure Virtual Network.
    MyVNET
    172.16.0.0/22
    DC 172.16.0.0/24
    WVD 172.16.1.0/24
    Server 172.16.2.0/24
 4. Opret Azure AD Domain Services miljø
 5. Sæt korrekt DNS server på Vnet
 6. Opret WVD bruger i Azure AD og skift password igen igen.
 7. Tilføj brugeren som Azure Subscription Owner
 8. Opret Server VNET
 9. Tilføj Azure AD Management server - Installere GPO+AD tools
10. Consent - https://rdweb.wvd.microsoft.com/
11. Tilføj rettigheder til Sub, ServicePrincipal (API), Azure AD
12. Deploy Windows Virtual Desktop

# Lock Screen after some minutes and manage CA/SM
https://docs.microsoft.com/en-us/windows/security/threat-protection/security-policy-settings/interactive-logon-machine-inactivity-limit <br>
https://docs.microsoft.com/da-dk/azure/active-directory/conditional-access/ <br>
https://docs.microsoft.com/en-us/azure/active-directory/conditional-access/howto-conditional-access-session-lifetime<br>