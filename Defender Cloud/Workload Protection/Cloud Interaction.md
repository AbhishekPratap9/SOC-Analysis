* **Create a Log Analytics workspace** <br><br>
  1)search for Log analytics in the Azure portal:<br>
  ![Screenshot (91)](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/8d2ea80c-1073-42e6-8806-457a3a0dfd65)<br><br>
  2) On the Log analytics workspace click create for creating the log analytics workspace and then fill the details, click create + review then final create after final review.
  ![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/c7d97f65-3c38-4347-9ee9-8a33570fcdcc)
  3) After deployment, we have successfully created a log analytics workspace:<br>
  ![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/5746bd0c-5f0e-4d20-8da5-5885b833a76d)<br>



* **Enable and configure Microsoft Defender for cloud** <br><br>
  1)Search for defender for cloud in the search bar in the Azure home portal<br>
  ![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/d3590117-202b-469f-b9c9-ea985e4a04ec)<br><br>
  2) Enable the subscription and select the environment settings in the left pane of defender for cloud<br>
  ![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/c4283515-256d-4862-b2ea-51f4b8fd6a0c)<br>
  3) Review the cloud plans in your subscriptionby clicking on your subscription<br>
  ![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/7c1c611b-2d7a-4cb2-932e-737ed356d76b)
  4) Make sure the Log analytics(Azure) agent is off in settings and monitoring menu as:<br>
  ![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/998c416c-44da-4857-aaed-b65dbcf19415)
  5) Go back to the subscription page and select the Log analytics workspace you created to review<br>
  6) Enable all the defender plans and then save




* **Onboard an on-premises server to Azure Arc** <br><br>
   1) Go to the server or endpoint which you want to onboard and *open azure portal -> Click Azure Arc*
   ![Untitled design(1)](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/ef236862-6c85-4f86-94d4-d260fa61b334)<br>
   2) *Select Servers -> Add*
   ![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/28ad3b0d-4151-44b0-a103-efc1a2e5819f)<br>
   3) select single server generate script<br>
   ![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/024b2e15-5f5a-48cf-916a-2c5d68545f64)<br>
   4) Review the prerequisites -> next -> Fill the server details and then click next to generate script
   ![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/1e03b58b-58dd-429b-b5a2-488326a3e1e4)<br>
   5) *generate the script and run in the powershell as administrator -> Authorize with azure arc account -> refresh on the server arc page and machine is added*




* **Protect the on-premises server**<br><br>
  1) *Go to microsoft defender cloud -> Getting started -> Add non-azure servers -> configure*<br>
  ![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/374045bc-3f2f-4e5a-a256-04a75d47f110)<br>
  2) *upgrade to the workspace created earlier -> Add servers*<br>
  ![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/912619ca-d483-47ad-9326-dee42a9565cd)<br>
  ![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/7c000919-dd4b-41ba-9bd2-1bdaa41bd43e)<br>
  3) *copy the workspace ID -> copy the primary key -> download the windows agent(64/32bit)*
  ![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/a674952e-3185-459d-8566-570fd4541437)<br>
  4) Install the windows agent and select the check-box for **connect the agent to Azure Log Analytics**
  ![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/e5bce832-d6f3-4a7f-a9f6-57214ee0b736)<br>
  5) *Paste the workspace ID and the primary key -> Next -> install -> finish* <br>
  ![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/d0294611-9b2f-4095-9af0-86e991ec5d52)<br>
  6) Return to the getting started page-> Inventory<br>
  ![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/11d6f726-d6d1-4a6b-abb1-9210958696c9)<br>
  Refresh the Inventory.




