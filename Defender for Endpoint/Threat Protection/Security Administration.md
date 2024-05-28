Defender Dashboard under Vulnerbility management gives an overview of organization exposure score for devices, exposure distribution, real-time visibility<br>
Top vulnerabilities as software, device, etc.
![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/2ed7ee8d-bb1d-4487-a0bc-916a76816e0e) <br><br>
**Security Recommendations**
* Provides actionable recommendations to improve vulnerbaility posture across all softwares and around the OS.<br>
* Recommendations are prioritized by threat intelligence.
![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/cdbc330b-b51a-4dde-b1a6-48849cb8efe6)<br>
* Some Other recommendations are given by Impact score and Remediationn type which judge your system's vulnerability and solution respectively.
* Security recommendation by side pane :
  ![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/6bca8f2e-1762-4ba9-a5bf-982a86d96d48)
*  **Device Remediation actions**
  ![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/cba7ce7c-9543-4774-9854-5890f5939cb7)
* **Inventories Section**: List of installed softwares in your network including vendor name, associated threats, weakness, exposed devices, etc. Also have sections for Browser extensions, Certificates installed across the organization, Hardware & firmware provide insights into known hardware and system models, processors, BIOS
  ![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/6af3e386-d32c-40cb-b5b3-2ac7d2f6ab1a)
* Security Remediation for Windows 11 Software Inspection:
  ![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/38e5bebc-4b65-410e-9d9a-354151794e30)<br><br>
  ![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/d21fd5fb-7207-4fef-b6d4-45b62a209f91)
* **Weaknesses**: Knowledge base of vulnerabilities known to defender, always filtered to show which vulnerability is taking effect on which device.
  ![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/61650e21-705a-4a2a-8d4a-2134e3a11281)
* **Event Timeline**: Risk News feed to interpret how risk introduced into organization through new exploits or vulnerabilities.
 ![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/dfe4821f-09a8-44e4-b2c5-b0972a635ca4)<br><br>
 ![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/d8553882-60a3-4b2e-ad87-52a81774a8b9)
* When a recommendation is not relevant according to the organization, we can create an exception and accept the risk as:
 ![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/0026bdbf-17ac-4177-bd2f-2489478d7a41)
* **Security Baseline Assessment**: Help to continuously monitor organization's security baselines compliance and identify changes in real time.
 ![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/18616f39-ffe0-4848-bc6d-7b2490273907)
* You can view the baseline structure of devices as well by seeing the detailed picture.
  Like in this illustration showing compliance status of Windows server 2019
  ![Untitled design](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/1e2e7f9c-94d2-4e32-89a0-91258dbabc01)
* Creating a baseline profile under Baseline assessments
  ![Screenshot from 2024-05-28 12-13-35](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/c4d2ec2b-10f7-4ef1-b8eb-ed4107f045d4) <br><br>

  ![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/4c479bfd-bb76-4dc4-8f21-968d4ada527a)<br><br><br>
  * **Advanced Hunting**
    * Hunting for known and potential threats
    * Query for device health status by endpoint agent:
      (KQL file as Endpoint health checkup.kql)
      ![Screenshot from 2024-05-28 12-27-33](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/5adb0873-d8af-4e61-85aa-dfc0df0eff18)







 


