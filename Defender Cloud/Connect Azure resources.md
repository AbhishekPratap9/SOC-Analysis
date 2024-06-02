**Asset Inventory:** <br>
Asset inventory page of defender for cloud is a single page for viewing the security posture of the resources you've connected to defender cloud.
It continuously analyzes the security state of all the connected resources. The page provides:
* Summary :
  * Total resources - Number of resources connected to defender cloud
  * Unhealthy resources - Resources with active security recommendations.
  * Unmonitored Resources - Resources with agent monitoring issues.
* Filters : Refine the list of resources
* Asset management options
* Export options<br><br>
To use the Defender for Cloud filter, select one or more options (Off, On, or Partial):
  * Off - Resources that aren't protected by a Defender for Cloud plan. You can right-click on any of these resources and upgrade them:
  * On - Resources that are protected by a Defender for Cloud plan
  * Partial - This option applies to subscriptions that have some but not all of the Defender for Cloud plans disabled.<br><br>

**Auto Provisioning:** <br>
auto provisioning reduces management overhead by installing all required agents and extensions on existing - and new - machines to ensure faster security coverage for all supported resources.
Data collection is required to provide visibility into missing updates, misconfigured OS security settings, endpoint protection status, and health and threat protection.<br>
Data is collected using:<br>
  * The Log Analytics agent, reads various security-related configurations and event logs from the machine and copies the data to your workspace for analysis. Examples of such data are operating system type and version, operating system logs (Windows event logs), running processes, machine name, IP addresses, and logged in user.
  * Security extensions, such as the Azure Policy Add-on for Kubernetes, which can also provide data to Security Center regarding specialized resource types.<br>
  ![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/5d8a09fe-f230-445b-b208-202d9289db34)<br><br>

**Enabling auto-provisioning:** <br>
*Cloud menu -> Environment settings -> Subscription -> auto-provisioning -> status of auto provisioning for the Log Analytics agent to On* <br>
* Connect Azure VMs to the default workspace(s) created by Defender for Cloud : Defender for Cloud creates a new resource group and default workspace in the same geolocation and connects the agent to that workspace. If a subscription contains VMs from multiple geolocations, Defender for Cloud creates multiple workspaces to ensure compliance with data privacy requirements.<br>
* security events collection within the context of a single workspace can be configured from either Microsoft Defender for Cloud or Microsoft Sentinel, but not both.
* Log analytics can be configured manually also, turn off the auto provisioning and then installing agent manually and scripts on the machine.



