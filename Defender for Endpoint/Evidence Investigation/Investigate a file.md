File associated with a specific alert, behavior, or event to help determine if the file exhibits malicious activities, identify the attack motivation, and understand the potential scope of the breach.
* Click on alerts related to file suspiciousness in the security operation dashboard.
* Open the file page and analyze the details like :<br>
![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/2790cb86-fe2a-46de-82d1-acab15192b9a)<br><br>
* For more insights, what the file does when it runs on a system, **Deep analysis** should be run to investigate the file in more detail and know about the file more like, file's activities, observed behaviors, and associated artifacts, such as dropped files, registry modifications, and communication with IPs.
* After the deep analysis is run on the cloud environment, It generates the report mainly consisting of two sections named **Behaviors** & **Observables**
  ![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/0b4d96ff-0000-4313-a788-1e022fc798f6)<br><br>
* After investigating the file and finding its malicious some actions need to be performed like:<br>
  * Stop and quarantine file on all machines containing it<br>
  ![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/f5d6520c-0caa-48be-9f36-c1e65de5326a)<br>
  * Block future execution of the file on the network.
  ![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/abe9e38e-433a-410b-a12b-c88f18696019)
  * You can restore a file from quarantine if you find that the file was clean after further investigations:<br>
  Run the following command on each device where the file was quarantined.

    Open an elevated command-line prompt on the device:

    Go to Start and type cmd.
    Right-click Command prompt and select Run as administrator.<br>
    ```“%ProgramFiles%\Windows Defender\MpCmdRun.exe” –Restore –Name EUS:Win32/CustomEnterpriseBlock –All```<br>
* Add indicator to block or allow a file:
  When you add an indicator hash for a file, you can choose to raise an alert and block the file whenever a device in your organization attempts to run it. Files automatically blocked by an indicator won't show up in the files' Action center, but the alerts will still be visible in the Alerts queue<br>
  Allow or block file:<br>
  To start blocking files, you first need to turn the Block or allow feature on in Settings.
* Download file: Download file from the response actions allows you to download a local, password-protected .zip archive containing your file. 






