Live response session provides instantaneous access to security teams to a device using a remote shell connection.
You can collect forensic data, run scripts, send suspicious entities for analysis, remediate threats, and proactively hunt for emerging threats.
With live response analysts can:<br>
* Run basic and advanced commands for investigation on device.
* Download files such as malware samples and outcomes of PowerShell scripts.
* Upload a PowerShell script or executable to the library and run it on a device from a tenant level.
* Take or undo remediation actions.<br><br>
![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/b50145f8-1d7c-4fcd-b8a6-cc4d589bf837)<br>
As a global admin, Enabling live response and unsigned script option in the advanced settings for better usability and investigation<br><br>
![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/70730116-8078-421b-bece-12b585cd54b7)<br>
Open Incident page by clicking the incidence -> Machines -> Click the specific machine you want to open a live session -> Click on Initiate live response session<br><br>
![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/00216270-5196-4987-9760-3c8f8208ca09)

![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/204d282f-41ab-42d3-ac5d-aad4af5b80d6)<br><br>
![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/f409fce4-9c22-4b6e-b485-c28138552070)<br>
Basic commands<br><br>

![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/f42e70c3-9d60-46a9-9f01-f9bad1f26a64)<br>
Advanced commands available for user roles that are granted the ability to run advanced live response commands.<br>
  
  * Download File using command : getfile <file_path>.<br>
  * Live response has a library where you can put files in. The library stores files (such as scripts) that can be run in a live response session at the tenant level.
  * Supported output types:<br>
    * -output json
    * -output table
  * Supported output pipes:<br>
    * CLI
    * File using the following command: [command] > [filename].txt.
  * View the command log<br>

  ![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/f448ba13-9fa0-4372-acf2-7621c386f949)<br>

Select the Command log tab to see the commands used on the device during a session. Each command is tracked with full details such as:<br>
  * ID
  * Command Line
  * Duration
  * Status and input or output side bar







