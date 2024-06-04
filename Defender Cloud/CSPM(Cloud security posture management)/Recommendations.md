* Cloud's recommendations is based on the Azure Security Benchmark.
* Widely respected benchmark builds on the controls from the Center for Internet Security (CIS) and the National Institute of Standards and Technology (NIST) with a focus on cloud-centric security. 
* **View secure score recommendations:**
  * *Defender cloud -> Recommendations*
    ![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/c2b9584b-1573-4f14-9391-3b57f4746b81)<br>
  * *select secure score recommendations -> select a relevant environment -> select > to expand the control, view a list of recommendations*
  * For supported recomnmendations, the toolbar shows:
    * Enforce or Deny
    * View policy definition to go directly to the Azure policy entry for the underlying policy
    * Open Query - View the detailed information about the affected resources using Azure Resource Graph Explorer
  * Severity indicator
  * Count of exempted resources
  * Mapping to MITRE ATT&CK


The relationship types are:

  * Prerequisite - A recommendation that must be completed before the selected recommendation
  * Alternative - A different recommendation, which provides another way of achieving the goals of the selected recommendation
  * Dependent - A recommendation for which the selected recommendation is a prerequisite For each related recommendation, the number of unhealthy resources is shown in the "Affected resources" column.
  * Remediation steps - A description of the manual steps required to remediate the security issue on the affected resources. For recommendations with the Fix option**, you can select View remediation logic before applying the suggested fix to your resources.

Affected resources - Your resources are grouped into tabs:

  * Healthy resources – Relevant resources, which either aren't impacted or on which you've already remediated the issue.

  * Unhealthy resources – Resources that are still impacted by the identified issue.

  * Not applicable resources – Resources for which the recommendation can't give a definitive answer. The not applicable tab also includes reasons for each resource.


To implement a Fix:


  From the list of recommendations that have the Fix action icon, select a recommendation.

  * From the Unhealthy resources tab, select the resources that you want to implement the recommendation on, and select Remediate.

  * In the confirmation box, read the remediation details and implications.

  * Insert the relevant parameters if necessary, and approve the remediation.

  * Once completed, a notification appears informing you if the remediation succeeded.





    



