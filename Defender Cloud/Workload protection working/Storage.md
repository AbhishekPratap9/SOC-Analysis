Azure-native layer of security intelligence that detects unusual and potentially harmful attempts to access or exploit your storage accounts.<br>
* Security alerts are triggered when anomalies in activity occur. Security alerts are integrated with Defender for Cloud and sent via email to subscription administrators with details of suspicious activity and recommendations on how to investigate and remediate threats.

### Kind of alerts for storage
Security alerts are triggered when :
* **Suspicious access patterns** - such as successful access from a Tor exit node or from an IP considered suspicious by Microsoft Threat Intelligence
* **Suspicious activities** - such as anomalous data extraction or unusual change of access permissions
* **Uploads of malicious content** - such as potential malware files (based on hash reputation analysis) or hosting of phishing content<br><br>
Alerts can be exported to Azure Sentinel or any other third-party SIEM or any other external tool.
