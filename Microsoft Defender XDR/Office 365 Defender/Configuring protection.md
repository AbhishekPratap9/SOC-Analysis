Security teams can configure protection by defining policies at different level as:
* User level
* Recipient Level
* Domain level
* Organization level


For setting policies there are several options:
1) **_Safe Attachments policy:_** <br>
    It protects your messaging system against any malicious attachments. It uses various ML
    analysis based techniques to identify any suspicious activities could be performed by
    attachments.<br>
    There are several _actions for unknown malware_ with attachments you can take:
    * **Off** - attachments won't be scanned
    * **Monitor** - Continues delivering the message after malware is detected and track the
      scanning results.
    * **Block** - Block the current and future emails and attachments with detected malware.
    *  **Replace** - Block the attachments with detected malware but continue to deliver the
      message body to the user.
    * **Dynamic delivery** - Immediately delivers the message body without attachments and
      reattaches after scanning if they're found safe.<br><br>
    Under _Redirect attachment on detection_ you can:<br>
    * Forward attachments that are blocked, replaced or monitorored to a security admin in your organization.
    * Forward attachment if the scanning process should time out.<br>
    Exchange Admin center(EAC) - for creating transport rule to bypaas safe attachments scanning.<br>
    ![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/3163020a-8b28-4b48-8364-f51b8b9e1a87) <br>

      
 2) **_Safe Links policy_** <br>
     * Select action for unknown potentially malicious URLs in msgs.<br>
     ![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/a3b025f7-d3b4-4848-b033-d8491db54c0c) <br>

       
 3) **_Anti-phishing policies_** <br>
     Checks for phishing attempts and blocks as well as take remediation action.<br>
     ![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/b17eb172-d31c-415c-b7b5-d5e2f36c53d9)

     
