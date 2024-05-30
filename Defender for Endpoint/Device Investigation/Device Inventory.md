Device inventory -> list of the devices in your network where alerts were generated.<br>
![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/58ff9df6-f31d-498d-a27b-1a8f82c7f2b0)<br>
We see information such as domain, risk level, OS platform, and other details for easy identification of devices most at risk.<br>
* Risk Level - overall risk assessment of the device based on a combination of factors, including the types and severity of active alerts on the device.
* Exposure Level - exposure of the device based on the cumulative impact of its pending security recommendations. The possible levels are low, medium, and high or
  If **NO data available:**
  * The device stopped reporting for more than 30 days – in that case, it's considered inactive, and the exposure isn't computed
  * The device OS isn't supported - see minimum requirements for Microsoft Defender for Endpoint
  * The device has a stale agent (unlikely)
* Health State - <br>
  The following device health states:

    * Active – Devices that are actively reporting sensor data to the service.
    * Inactive – Devices that have stopped sending signals for more than seven days.
    * Misconfigured – Devices that have impaired communications with service or are unable to send sensor data. Misconfigured devices can further be classified to:
      * No sensor data
      * Impaired communications
* Antivirus Status - The antivirus status for Windows 10 devices only:

  * Disabled - Virus & threat protection is turned off.
  * Not reporting - Virus & threat protection isn't reporting.
  * Not updated - Virus & threat protection isn't up to date.



