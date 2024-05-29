Managing access to data and alerts are a crucial part of controlling, how security framework will work and how company infra will look when hierarchy is created on the basis of roles based permission.
Basically it is created as:
* TIER 1
* TIER 2
* TIER 3<br>
We can create TIER 1 group by clicking roles in permission menu and selecting Add Role:
![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/3f7d3e6d-c064-4ba2-bf4a-245105414c6f)
  * We are giving now alerts investigations and data viewing capabilities to the TIER 1 security team.
  * TIER 2 can have the remediation actions control
  * TIER 3 can manage and change the security settings also.<br><br>
![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/5ae3a63f-5c76-404d-a860-737c7455e53a)
  * Adding the user groups from different groups assigned as TIER 1 in the organization.
* Creating three TIERs and giving their respective permissions and adding user groups from different countries.
  ![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/ffd78701-265f-4a34-a81d-361fa9a47a3e)
* Just like User group, Machine groups can also be added and configured according to organization needs:
  ![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/9fda7d86-0e22-49c3-a86b-478d32593414)
* Use machine tagging to tag a series of same events with machine in different groups.<br><br><br>

**Permissions Options:**<br>
The permission options:

    View data

        Security operations - View all security operations data in the portal

        Threat and vulnerability management - View threat and vulnerability management data in the portal

    Active remediation actions

        Security operations - Take response actions, approve or dismiss pending remediation actions, manage allowed/blocked lists for automation and indicators

        Threat and vulnerability management - Exception handling - Create new exceptions and manage active exceptions

        Threat and vulnerability management - Remediation handling - Submit new remediation requests, create tickets, and manage existing remediation activities

        Threat and vulnerability management - Application handling - Apply immediate mitigation actions by blocking vulnerable applications, and manage the blocked apps by unblocking if approved

    Threat and vulnerability management – Manage security baselines assessment profiles - Create and manage profiles to assess if your devices comply with security industry baselines

    Alerts investigation - Manage alerts, start automated investigations, run scans, collect investigation packages, manage device tags, and download only portable executable (PE) files

    Manage security settings in Security Center - Configure alert suppression settings, manage folder exclusions for automation, onboard and offboard devices, and manage email notifications, manage evaluation lab

    Manage endpoint security settings in Microsoft Endpoint Manager - Full access to the "Endpoint Security" area in Microsoft Endpoint Manager, Intune "Endpoint Security Manager" role permissions, configure endpoint security and compliance features including Microsoft Defender for Endpoint onboarding, and the ability to view the "Configuration Management" page in Security Center

    Live response capabilities

        Basic commands:

            Start a live response session

            Perform read-only live response commands on remote device (excluding file copy and execution)

        Advanced commands:

            Download a file from the remote device via live response

            Download PE and non-PE files from the file page

            Upload a file to the remote device

            View a script from the files library

            Execute a script on the remote device from the files library


  




