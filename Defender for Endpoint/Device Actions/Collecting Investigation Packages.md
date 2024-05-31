As a part of Investigation process, you can collect an investigation package from a device. You can analyze the current state,
Tools and techniques used ny the attacker.<br>
To collect the investigation package, Zip file you can download from response actions or Action center, The package includes:<br>
* *Autoruns*<br>
Contains set of files that each represent the content of the registry of a known auto start entry point (ASEP) to help identify attacker’s persistency on the device.
Show ERROR when no registry will be found.<br><br>
* *Installed programs*<br>
This .CSV file contains the list of installed programs that can help identify what is currently installed on the device. For more information, see Win32_Product class.<br><br>
* *Network Connections*<br>
contains a set of data points related to the connectivity information, which can help identify connectivity to suspicious URLs, attacker’s command and control (C&C) infrastructure, any lateral movement, or remote connections.<br>
  * ActiveNetConnections.txt - protocol statistics and current TCP/IP network connections.
  * Arp.txt - Displays the current address resolution protocol (ARP) cache tables for all interfaces.ARP cache can reveal other hosts on a network that have been compromised or suspicious systems on the network that might have been used to run an internal attack.
  * DnsCache.txt - Displays the contents of the DNS client resolver cache, which includes both entries preloaded from the local Hosts file and any recently obtained resource records for name queries resolved by the computer.
  * IpConfig.txt - Displays the full TCP/IP configuration for all adapters. Adapters can represent physical interfaces, such as installed network adapters, or logical interfaces, such as dial-up connections.
  * FirewallExecutionLog.txt
  * pfirewall.log<br><br>
* *Prefetch files*<br>
designed to speed up the application startup process. It can be used to track all the files recently used in the system and find traces for applications that might have been deleted but can still be found in the prefetch file list.<br>
  * Prefetch folder – Contains a copy of the prefetch files from %SystemRoot%\Prefetch. It's suggested to download a prefetch file viewer to view the prefetch files.
  * PrefetchFilesList.txt – Contains the list of all the copied files that can be used to track if there were any copy failures to the prefetch folder.<br><br>
* *Processes*<br>
Contains a .CSV file listing the running processes, which provide the ability to identify current processes running on the device. This can be useful when identifying a suspicious process and its state.<br><br>
* *Scheduled tasks*<br>
Contains a .CSV file listing the scheduled tasks, which can be used to identify routines performed automatically on a chosen device to look for suspicious code that was set to run automatically.<br><br>
* *Security event log*<br>
Contains the security event log, which contains records of login or logout activity or other security-related events specified by the system's audit policy. You can open the event log file using the Event viewer.<br><br>
* *Services*<br>
Contains a .CSV file that lists services and their states.<br><br>
* *Windows Server Message Block(SMB) sessions*<br>
Lists shared access to files, printers, serial ports, and miscellaneous communications between nodes on a network. This can help identify data exfiltration or lateral movement. It also contains files for SMBInboundSessions and SMBOutboundSession. If there are no sessions (inbound or outbound), you'll get a text file that tells you that there are no SMB sessions found.<br><br>
* *System Information*<br>
Contains a SystemInformation.txt file that lists system information such as OS version and network cards.<br><br>
* *Temp directories*<br>
set of text files that lists the files located in %Temp% for every user in the system. This can help to track suspicious files that an attacker may have dropped on the system. If the file contains the following message: “The system can't find the path specified”, it means that there's no temp directory for this user, and might be because the user didn’t sign in to the system.<br><br>
* *User and groups*<br>
list of files that each represent a group and its members.<br><br>
* *WdSupportLogs*<br>
MpCmdRunLog.txt and MPSupportFiles.cab<br><br>
* *CollectionSummaryReport.xls*<br>
summary of the investigation package collection, it contains the list of data points, the command used to extract the data, the execution status, and the error code if there's failure. 

  

