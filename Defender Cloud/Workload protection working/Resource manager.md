### Azure Resource Manager 
 * It is the deployment and management service for Azure. It provides management layer that enables to create, update, and delete resources in Azure account. Management features, like access control, locks, and tags, to secure and organize resources after deployment.
 * Automatically monitors the resource management operations in organization. Whether they're performed through the Azure portal, Azure REST APIs, Azure CLI, or other Azure programmatic clients Defender for Cloud runs advanced security analytics to detect threats and alert about suspicious activity.<br>


### Defender for Resource Manager protects against:
  * **Suspicious resource management operations :** such as operations from suspicious IP addresses, disabling antimalware and suspicious scripts running in VM extensions
  * **Use of exploitation toolkits :** like Microburst or PowerZure
  * **Lateral movement :** like from the Azure management layer to the Azure resources data plane


For Investigations:<br>
 * *Azure Activity log -> Filter the events to subscription, time-frame or user account mentioned in the alert -> Look for suspicious activities*
