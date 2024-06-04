Defender for servers provide threat protection and defenses to the windows and linux machines on Azure, AWS, GCP or on-premises.<br>
Uses Azure Arc for hybridd and multi-cloud environments.<br>
Threat detection & protection capabilities include:
* **Integrated license for EDR** : Defender for servers includes for endpoints also.When defender for servers are enabled, Cloud gets access to Endpoint data related to vulnerabilities, installed softwares and alerts.
* **Threat and vulnerbility management & tools** : Includes a choice of vulnerability discovery and management tools for your machines.prioritizes vulnerabilities according to the threat landscape, detections in your organization, sensitive information on vulnerable devices, and the business context.
* **VM access** : VIrtual amchines are potential targets for an attck having open management ports like RDP or SSH. When Defender for server is enabled you get VM access to lock the inbound traffic for attack.
* **(FIM)File integrity monitoring** : Change monitoring, examine files and registries of OS, application software and others for changes that might indicate the attack. FIM can be used to validate the integrity of windows files, your windows registries and linux files.
* **(AAC) Adaptive application controls** : Intelligent and automated solution  for defining allowlists of known-safen application for machines. Configure adaptive application controls.
* **(ANH) Adaptive network hardening** : Applying Network seciurity groups to filter traffic to and from resources, improves your network security postures. Recommendations and uses ML that factors in actual traffic , known trusted configuration,threat intelligence and other IOC.
* **Docker host hardening** : Defender for cloud identifies unmanaged containers hosted on IaaS Linux VMs, or otehr Linux machines running Docker containers. Cloud continuosly access the security posture of the containers and give you the relevant recommendations, it then compares to the CIS (center fmor internet security) Docker Benchmark.
* **Fileless attack detection** : Fileless attack injects malicious payloads into memory to avoid detections by disk-based scanning techniques. With fileless attack detection, automated memory forensic techniques identify fileless attack toolkits, techniques, and behaviors.
  * Specific insights include the identification of:

    * Well-known toolkits and crypto mining software
    * Shellcode - piece of code typically used as the payload in the exploitation of a software vulnerability.
    * Injected malicious executable in process memory
 * **Linux auditd alerts & Log Analytics agent integration(Linux)** : auditd system consists of a kernel-level subsystem, which is responsible for monitoring system calls. It filters them by a specified rule set, and writes messages for them to a socket.
