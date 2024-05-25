Microsoft Entra ID protection helps to automatically detect, remediate and investigate identity-based risks for
organization.

Entra ID protection is used against risks to identity, that are clssified in two ways:

* USER risk - Include unusual behavior or patterns of usage, Leaked credentials of user.
* SIGN-IN risk - Unfamilier sign-in properties, Atypical travel, Malware linked IP, Anonymous IP address.

Based on above Risks two different ways to detect and handle identity risks are there:

* Self-Remediation workflow:

  Administrator -> Configure Risk policies -> Detect risks -> Responding to risk according to risk policies <br>
  

* Administrator Remediation workflow:

  Administrator -> Configure Risk policies -> Detect Risks -> Reports Generated -> Admin Notified -> 
  Admins investigates the activity -> Takles action
  


Difference between the two method id that in theb self-remediation first the policies are set and in the admin
remediation first reports are generated, no action atm first is taken and the admin first takes the investigation 
and takes decision as a group(if admin is a group of people).

**Risk Policies**:<br>
Two types of risk policies are there as:
* Sign-in Risk policy - Scrutinizes and keep conditions and laws on every sign-in
* User Risk policy - Here Identity learns the user's normal behavior patterns then uses this patterns and knowledge 
to compromise and calculate whether this action is questionable.
