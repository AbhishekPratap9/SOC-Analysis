*Attack surface reduction rules target certain software behaviors that are often abused by attackers. Such behaviors include:* <br>

* Launching executable files and scripts that attempt to download or run files

* Running obfuscated or otherwise suspicious scripts

* Performing behaviors that apps don't usually initiate during normal day-to-day work.

*Such software behaviors are sometimes seen in legitimate applications; however, these behaviors are often considered risky 
because they're commonly abused by malware. Attack surface reduction rules can constrain risky behaviors and help keep your organization safe.
Each Attack Surface Reduction rule contains one of four settings:* <br>

* Not configured: Disable the attack surface reduction rule

* Block: Enable the Attack Surface Reduction rule

* Audit: Evaluate how the attack surface reduction rule would impact your organization if enabled

* Warn: Enable the Attack Surface Reduction rule but allow the end user to bypass the block

*Audit mode for evaluation:* <br>
Use audit mode to evaluate how attack surface reduction rules would impact your organization if they were enabled. 
It's best to run all rules in audit mode first so you can understand their impact on your line-of-business applications. 
Many line-of-business applications are written with limited security concerns, and they may perform tasks in ways that seem similar to malware. 
By monitoring audit data and adding exclusions for necessary applications, you can deploy attack surface reduction rules without impacting productivity.<br>

*Exclude files and folders from attack surface reduction rules:* <br>
You can exclude files and folders from being evaluated by most attack surface reduction rules. This means that even if an attack surface reduction rule determines
the file or folder contains malicious behavior, it will not block the file from running, which also means potentially unsafe files are allowed to run and infect your devices. 
 
 
 
 **Attack Surface Reduction rules:** <br>
* Block executable content from email client and webmail
* Block all Office applications from creating child processes
* Block Office applications from creating executable content
* Block Office applications from injecting code into other processes
* Block JavaScript or VBScript from launching downloaded executable content
* Block execution of potentially obfuscated scripts
* Block Win32 API calls from Office macro
* Use advanced protection against ransomware
* Block credential stealing from the Windows local security authority subsystem (lsass.exe)
* Block process creations originating from PSExec and WMI commands
* Block untrusted and unsigned processes that run from USB
* Block executable files from running unless they meet a prevalence, age, or trusted list criteria
* Block Office communication applications from creating child processes
* Block Adobe Reader from creating child processes
* Block persistence through WMI event subscription<br><br>

 **You can enable attack surface reduction rules by using any of these methods:**

* Microsoft Intune
* Mobile Device Management (MDM)
* Microsoft Endpoint Configuration Manager
* Group Policy
* PowerShell



