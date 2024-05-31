**Behavioral blocking** and containment capabilities work with multiple components and features of Defender for Endpoint to stop attacks immediately and prevent attacks from progressing:<br>
* Next-generation protection (which includes Microsoft Defender Antivirus) can detect threats by analyzing behaviors and stop threats that have started running.
* Endpoint detection and response (EDR) receives security signals from across your network, devices, and Operating System (OS) kernel behavior.
   As threats are detected, alerts are created. Multiple alerts of the same type are aggregated into incidents.
* Defender for Endpoint has a wide range of optics across identities, email, data, and apps. And the network, endpoint, and kernel behavior signals received through EDR.<br><br>
Alert triggered by behavioral blocking and containment capabilities :<br>
![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/18a23b0f-6795-4ae6-8649-5432dd3a9844)
**Client Behavioral Blocking**  can detect suspicious behavior, malicious code, fileless and in-memory attacks, and more on a device. When suspicious behaviors are detected,
   Microsoft Defender Antivirus monitors and sends those suspicious behaviors and their process trees to the cloud protection service. 
    Client behavioral blocking is effective because it not only helps prevent an attack from starting, but it can help stop an attack that has begun executing.
  With feedback-loop blocking (another capability of behavioral blocking and containment), attacks are prevented on other devices in your organization.<br><br>
  ![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/28678d42-e79b-4e8a-81ac-74a117bbce27)<br><br>
  Enable EDR in block mode:
  ![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/9be7ed1f-ecc3-4fd6-ba57-b12860111c9b)<br><br>
  Malware got blocked:
  ![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/8410bfff-fbc8-4bdd-ab41-27cf45e1feef)<br><br>
  Feedback-Loop blocking:
  When a suspicious behavior or file is detected,  The rapid protection loop engine inspects and correlates the information with other signals to arrive at a decision as to whether to block a file.
   Checking and classifying artifacts happens quickly. It results in rapid blocking of confirmed malware and drives protection across the entire ecosystem.



