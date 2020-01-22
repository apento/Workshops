# Windows Virtual Desktop Workshop
Microsoft Lyngby - 21. January 2020

This site contains links and content from the workshop.




#Install PowerShell modules
##################################################################
Install-Module -Name Microsoft.RDInfra.RDPowerShell
Import-Module -Name Microsoft.RDInfra.RDPowerShell

#Setting Deployment context
$brokerurl = "https://rdbroker.wvd.microsoft.com" # Don't change the deploymenturl

#Use any name for your tenant, get your ID from Azure portal > Azure Active Directory > Properties > Directory ID. To get your SubscriptionID, go to Azure Portal > All services > subscriptions > click the subscription where the VM's will reside and copy the subscription ID:
$aadTenantId = "35e7fe4f-ebff-48fb-b397-754175f50a3c"
$azureSubscriptionId = "1421fa12-b05b-4c37-ac16-9b822eef3b19"
Add-RdsAccount -DeploymentUrl $brokerurl

#################################################################



# NEW  RDS Tenant
New-RdsTenant -Name Workshop -AadTenantId $aadTenantId -AzureSubscriptionId $azureSubscriptionId


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

