Connect non-Azure computers in any of the following ways:
* Using Azure Arc enabled servers (recommended)
* From Defender for Cloud's pages in the Azure portal (Getting started and Inventory)<br><br>
**Azure Arc enabled :** <br>
 Azure Arc enabled servers allows you to manage your Windows and Linux machines hosted outside of Azure, on your corporate network, or other cloud providers, just like you manage native Azure virtual machines.<br>
 When a hybrid machine is connected to Azure, it becomes a connected machine and is treated as a resource in Azure. Each connected machine has a Resource ID, is included in a resource group, and benefits from standard Azure constructs such as Azure Policy and applying tags.<br>
 Azure Connected Machine agent needs to be installed on each machine that you plan on connecting to Azure.<br><br>
 **Add non-Azure machines from the Azure portal :** <br>
 *Getting started -> Below Add non-Azure servers select Configure -> Open Inventory for cloud's menu -> Add non-Azure Servers button*

Depending on the type of machines you're onboarding:<br>
* Onboard your Azure Stack VMs
* Onboard your Linux machines
* Onboard your Windows machines

  **Onboard Azure Stack VMs**<br>
  Install extension configuration page, paste the Workspace ID and Workspace Key (Primary Key)<br>
  **Onboard your Linux machines**<br>
  Copy the WGET command, paste it into terminal console, validate with omsagent PID<br>
  **Onboard your Windows machines**<br>
  Download windows Agent, copy the workspace ID and primary key, follow the Installation wizard



