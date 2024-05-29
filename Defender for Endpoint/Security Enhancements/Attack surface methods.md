*Intune* <br>
**Device Configuration Profiles:**
* select *Device Configuration -> Profiles* | Select a Endpoint profile or create new peofile
* select *Endpoint protection pane -> Windows Defender Exploit Guard -> action surface reduction*
* Under Attack Surface Reduction exceptions, enter individual files and folders. You can also select Import to import a
  CSV file that contains files and folders to exclude from attack surface reduction rules. Each line in the CSV file
  should be formatted as follows:<br>
  C:\folder, %ProgramFiles%\folder\file, C:\path

* select OK

**Endpoint Security Policy**
* *select Endpoint security -> Attack surface reduction* : Choose an existing rule or create a new one. To create a new one, select Create Policy and enter information for this profile. For Profile type, select Attack surface reduction rules. If you've chosen an existing profile, select Properties and then select Settings.
* *Attack Surface Reduction -> select the desired setting for each rule*
* 
