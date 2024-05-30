*Intune* <br>
1) Device Configuration Profiles:
* select *Device Configuration -> Profiles* | Select a Endpoint profile or create new peofile
* select *Endpoint protection pane -> Windows Defender Exploit Guard -> action surface reduction*
* Under Attack Surface Reduction exceptions, enter individual files and folders. You can also select Import to import a
  CSV file that contains files and folders to exclude from attack surface reduction rules. Each line in the CSV file
  should be formatted as follows:<br>
  C:\folder, %ProgramFiles%\folder\file, C:\path

* select OK

2) Endpoint Security Policy:
* *select Endpoint security -> Attack surface reduction* : Choose an existing rule or create a new one. To create a new one, select Create Policy and enter information for this profile. For Profile type, select Attack surface reduction rules. If you've chosen an existing profile, select Properties and then select Settings.
* *Attack Surface Reduction -> select the desired setting for each rule*
* *Under List of additional folders that need to be protected -> List of apps that have access to protected folders -> and Exclude files and paths from attack surface reduction rules -> enter individual files and folders.* You can also select Import to import a CSV file.
* Select Next on the three configuration panes, then select Create if you're creating a new policy or Save if you're editing an existing policy.<br><br>

*Mobile Device Management* <br>
* Use the *./Vendor/MSFT/Policy/Config/Defender/AttackSurfaceReductionRules* configuration service provider (CSP) to individually enable and set the mode for each rule.
* Follow  Attack surface reduction rules for using GUID values.
* OMA-URI path: *./Vendor/MSFT/Policy/Config/Defender/AttackSurfaceReductionRules*
* Value: 75668C1F-73B5-4CF0-BB93-3ECF5CB7CC84=2|3B576869-A4EC-4529-8536-B80A7769E899=1|D4F940AB-401B-4EfC-AADC-AD5F3C50688A=2|D3E037E1-3EB8-44C8-A917-57927947596D=1|5BEB7EFE-FD9A-4556-801D-275E5FFC04CC=0|BE9BA2D9-53EA-4CDC-84E5-9B1EEEE46550=1
* The values to enable, disable, or enable in audit mode are:
  * Disable = 0
  * Block (enable attack surface reduction rule) = 1
  * Audit = 2
* Use the */Vendor/MSFT/Policy/Config/Defender/AttackSurfaceReductionOnlyExclusions* configuration service provider (CSP) to add exclusions.<br><br>

*Endpoint Configuration Manager*<br>
To manage the attack surface reduction rules in Microsoft Endpoint Configuration Manager:<br>

* *Microsoft Endpoint Configuration Manager -> Assets and Compliance -> Endpoint Protection -> Windows Defender Exploit Guard*.

* *Home -> Create Exploit Guard Policy*

* Enter a name and a description, *select Attack Surface Reduction -> select Next*

* Choose which rules will block or audit actions and select Next.

* Review the settings and select Next to create the policy.

* After the policy is created select Close.<br><br>
*Group Policy*<br>
**Warning: If you manage your computers and devices with Intune, Configuration Manager, or another enterprise-level management platform, the management software will overwrite any conflicting Group Policy settings on startup.**
* Group Policy management on computer, open the Group Policy Management Console, right-click the Group Policy Object you want to configure, and select Edit.

* *Group Policy Management Editor -> Computer configuration -> Administrative templates*

* *Expand the tree to Windows components -> Microsoft Defender Antivirus -> Windows Defender Exploit Guard -> Attack surface reduction*

* Select Configure Attack surface reduction rules and select Enabled. You can then set the individual state for each rule in the options section.<br><br>
* Select Show... and enter the rule ID in the Value name column and your chosen state in the Value column as follows:
  * Disable = 0 Block (enable attack surface reduction rule) = 1 Audit = 2
* To exclude files and folders from attack surface reduction rules, select the Exclude files and paths from Attack surface reduction rules setting and set the option to Enabled.<br><br>

*Powershell*<br>
**Warning: If you manage your computers and devices with Intune, Configuration Manager, or another enterprise-level management platform, the management software will overwrite any conflicting PowerShell settings on startup. To allow users to define the value using PowerShell, use the "User Defined" option for the rule in the management platform.**

* powershell -> Run as administrator
* ```Set-MpPreference -AttackSurfaceReductionRules_Ids <rule ID> -AttackSurfaceReductionRules_Actions Enabled```
* To enable attack surface reduction rules in audit mode, use the following cmdlet:<br>
  ```Add-MpPreference -AttackSurfaceReductionRules_Ids <rule ID> -AttackSurfaceReductionRules_Actions AuditMode```
* To turn off attack surface reduction rules, use the following cmdlet:<br>
  ```Add-MpPreference -AttackSurfaceReductionRules_Ids <rule ID> -AttackSurfaceReductionRules_Actions Disabled```
* You must specify the state individually for each rule, but you can combine rules and states in a comma-separated list.
* In the following example, the first two rules will be enabled, the third rule will be disabled, and the fourth rule will be enabled in audit mode:<br>
```Set-MpPreference -AttackSurfaceReductionRules_Ids <rule ID 1>,<rule ID 2>,<rule ID 3>,<rule ID 4> -AttackSurfaceReductionRules_Actions Enabled, Enabled, Disabled, AuditMode```
* You can also use the Add-MpPreference PowerShell verb to add new rules to the existing list.

* Set-MpPreference will always overwrite the existing set of rules. If you want to add to the existing set, you should use Add-MpPreference instead. You can obtain a list of rules and their current state by using Get-MpPreference.

* To exclude files and folders from attack surface reduction rules, use the following cmdlet:<br>
```Add-MpPreference -AttackSurfaceReductionOnlyExclusions "<fully qualified path or resource>"```
* Continue to use Add-MpPreference -AttackSurfaceReductionOnlyExclusions to add more files and folders to the list.
* **important: Use Add-MpPreference to append or add apps to the list. Using the Set-MpPreference cmdlet will overwrite the existing list.**

