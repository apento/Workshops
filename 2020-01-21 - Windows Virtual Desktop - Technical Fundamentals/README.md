# Windows Virtual Desktop Workshop
Microsoft Lyngby - 21. January 2020

This site contains links and content from the workshop.

# STUDENT EVALUTION LINK 
Kom gerne med jeres feedback. Nu er det første gang vi afholder denne workshop og holdet er godt blandet mellem både SMB og Enterprise segmentet. Er antallet af deltagere fornuftigt eller vil i foretrække mindre hold. Savner i mere teknisk indhold eller arkitekt rådgivning. Flere cases fra danske kunder eller andet? Kom med jeres feedback ved at klikke på nedenstående link. Linket udløber i dag!<br><br>
https://globalknowledge.az1.qualtrics.com/jfe/form/SV_2l9xxtKvLOyJCKN?EVENTID=DK61419 

# Windows Virtual Desktop Documentation
Tenant and host pool creation:<br> https://docs.microsoft.com/en-us/azure/virtual-desktop/troubleshoot-set-up-issues<br>
<br>Subscritpion CPU limitation:<br>https://github.com/MicrosoftDocs/azure-docs/pull/41360<br>
<br>Tenant creation link:<br> https://docs.microsoft.com/en-us/azure/virtual-desktop/tenant-setup-azure-active-directory#create-a-windows-virtual-desktop-tenant<br>
<br>Consent page:<br> https://rdweb.wvd.microsoft.com/<br>
<br>RTT Estimator:<br> https://azure.microsoft.com/en-us/services/virtual-desktop/assessment/<br>

# Community Links:
How to implement and manage Azure AD Domain Services (Azure AD DS) for a fast Windows Virtual Desktop (WVD) PoC deployment:<br>
https://www.robinhobo.com/how-to-implement-and-manage-azure-ad-domain-services-azure-ad-ds-for-a-fast-windows-virtual-desktop-wvd-poc-deployment/<br>

# WVD Clients: 
Connect with the Windows Desktop client<br>
https://docs.microsoft.com/en-us/azure/virtual-desktop/connect-windows-7-and-10 <br><br>
Connect with the web client<br>
https://rdweb.wvd.microsoft.com/webclient/index.html <br>

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
https://docs.microsoft.com/en-us/windows/security/threat-protection/security-policy-settings/interactive-logon-machine-inactivity-limit <br><br>
https://docs.microsoft.com/da-dk/azure/active-directory/conditional-access/ <br><br>
https://docs.microsoft.com/en-us/azure/active-directory/conditional-access/howto-conditional-access-session-lifetime<br><br>

# Example of Image Capture with FSLogix
https://github.com/MicrosoftDocs/azure-docs/blob/master/articles/virtual-desktop/set-up-customize-master-image.md

# ARM Template for Hostpool creation
https://github.com/Azure/RDS-Templates/tree/master/wvd-templates/Create%20and%20provision%20WVD%20host%20pool

# Troubleshooting Tracking ID 
<br>
Looking Tracking ID
<br>
https://docs.microsoft.com/en-us/azure/virtual-desktop/diagnostics-role-service


Get-RdsDiagnosticActivities -TenantName <tenantname> -ActivityType Connection -ActivityId 9d866d31-9fbe-47e5-a3bd-4950aafe0000 -Detailed


You can also break some of the info out to look at details and errors using:

(Get-RdsDiagnosticActivities -TenantName <tenantname> -ActivityType Connection -ActivityId 9d866d31-9fbe-47e5-a3bd-4950aafe0000 -Detailed).Errors
(Get-RdsDiagnosticActivities -TenantName <tenantname> -ActivityType Connection -ActivityId 9d866d31-9fbe-47e5-a3bd-4950aafe0000 -Detailed).Details
