* **Create a Log Analytics workspace** <br><br>
  1)search for Log analytics in the Azure portal:<br>
  ![Screenshot (91)](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/8d2ea80c-1073-42e6-8806-457a3a0dfd65)<br><br>
  2) On the Log analytics workspace click create for creating the log analytics workspace and then fill the details, click create + review then final create after final review.
  ![Screenshot (93)](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/c8ac7292-9661-424b-81b9-a4d9a2b0744a)<br><br>
  3) After deployment, we have successfully created a log analytics workspace:<br>
  ![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/5746bd0c-5f0e-4d20-8da5-5885b833a76d)<br>



* **Enable and configure Microsoft Defender for cloud** <br><br>
  1)Search for defender for cloud in the search bar in the Azure home portal<br>
  ![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/d3590117-202b-469f-b9c9-ea985e4a04ec)<br><br>
  2) Enable the subscription and select the environment settings in the left pane of defender for cloud<br>
  ![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/c4283515-256d-4862-b2ea-51f4b8fd6a0c)<br>
  3) Review the cloud plans in your subscriptionby clicking on your subscription<br>
  ![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/a7131d42-5bce-4fce-8635-3778f7aae396)
  4) Make sure the Log analytics(Azure) agent is off in settings and monitoring menu as:<br>
  ![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/998c416c-44da-4857-aaed-b65dbcf19415)
  5) Go back to the subscription page and select the Log analytics workspace you created to review<br>
  6) Enable all the defender plans and then save




* Onboard an on-premises server to Azure Arc
* Protect the on-premises server
