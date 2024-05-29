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
* *select Endpoint security -> Attack surface reduction*
