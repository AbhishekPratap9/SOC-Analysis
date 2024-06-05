* Threat protection for Azure network layer
  Cloud network-layer analytics is based on sample IPFIX data, which are packet headers collected by Azure core routers. Based on this data feed, Defender for Cloud uses machine learning models to identify and flag malicious traffic activities.<br>
  For Defender for Cloud to generate network alerts, ensure that:
  * Your virtual machine has a public IP address (or is on a load balancer with a public IP address).
  * Your virtual machine's network egress traffic isn't blocked by an external IDS solution.

* Threat protection for Azure Cosmos DB
* Azure WAF alerts in Microsoft Defender for Cloud
  provides centralized protection of your web applications from common exploits and vulnerabilities.The Application Gateway WAF is based on Core Rule Set 3.0 or 2.2.9 from the Open Web Application Security Project. If you have a license for Azure WAF, your WAF alerts are streamed to Defender for Cloud with no extra configuration needed.
* Azure DDoS Protection alerts in Microsoft Defender for Cloud
  Azure DDoS Protection protect agattempts to exhaust an application's resources, making the application unavailable to legitimate users.target any endpoint that can be reached through the internet
* Cloud recommendations in Microsoft Defender for Cloud Apps
