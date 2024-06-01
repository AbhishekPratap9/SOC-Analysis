Advanced features page in the Settings/General area provides the following automation-related settings.The following are settings that are automation focused:<br>
![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/1fe3cffc-109c-4ca8-8519-0178012356d6)<br>
Blocking is only available if your organization fulfills these requirements:

  * Uses Microsoft Defender Antivirus as the active antimalware solution
  * The cloud-based protection feature is enabled

    **Automation Upload and folder settings:**<br>
    * Enable File Content Analysis: certain files and email attachments can automatically be uploaded to the cloud for more inspection in Automated investigation.
    * Enable Memory Content Analysis: Microsoft Defender for Endpoint to automatically investigate memory content of processes. When enabled, memory content might be uploaded to defender
      ![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/a9a853e5-9fb5-4e1a-a273-7b7c4d8b257a)
  * Add file extension name and attachment extension name
  * Manage folder exclusions:<br>
    folder exclusions allow you to specify folders that the Automated investigation will skip:<br>
    * Folders
    * Extension of files
    * File names
  * To manage folder exclusions:

    In the navigation pane for Microsoft Defender XDR, select *Settings -> Endpoints*. Under the Rules section, select Automation folder exclusions.

    Select New folder exclusion.

    Enter the folder details:

    * Folder
    * Extensions
    * File names
    * Description

    Select Save



