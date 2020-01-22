#Install PowerShell modules
##################################################################
Install-Module -Name Microsoft.RDInfra.RDPowerShell
Import-Module -Name Microsoft.RDInfra.RDPowerShell

# Setting Deployment context
$brokerurl = "https://rdbroker.wvd.microsoft.com" # Don't change the deploymenturl

# Use any name for your tenant, get your ID from Azure portal > Azure Active Directory > Properties > Directory ID. To get your SubscriptionID, go to Azure Portal > All services > subscriptions > click the subscription where the VM's will reside and copy the subscription ID:
$aadTenantId = "35e7fe4f-ebff-48fb-b397-754175f50a3c"
$azureSubscriptionId = "1421fa12-b05b-4c37-ac16-9b822eef3b19"
Add-RdsAccount -DeploymentUrl $brokerurl

#################################################################

# NEW  RDS Tenant
New-RdsTenant -Name Workshop -AadTenantId $aadTenantId -AzureSubscriptionId $azureSubscriptionId
