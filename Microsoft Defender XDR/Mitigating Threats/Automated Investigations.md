AIR(Automated investigation & remediation) are the actions which are automated on alerts by defender using 
playbook tactics or previous techniques for fixable alerts.

AIR collects all the events acroos and group them together to form a incidence then it collects the information 
about user, devices, file and evidence of compromise, etc. to form a fully grouped and ordered incidence view.
It then groups the evidence as SUSPICIOUS, MALICIOUS or  CLEAN, and act accordingly.

AIR can be seen and analyzed in Incident's Investigation Tab:
The Investigation list provide the list of all the automated investigation it performed, highlighting
Triggering alert name, Status, Source, entity,etc.

Clicking on the specific investigation, will get the detailed view of the investigation that took place 
and related evidence and objects related to it.It also provide the graphical view of the investigation,
starting and ending time of the investigation.

Evidence tab that can show this event has been encountered or remediated by defender 
previously or not with detailed reports of those incidents.
Log tab shows you the each action that defender took to work on the investigation.

[ LEVEL OF AUTOMATION ]

* Full - Remediate threats automatically, No approval from admin is required. All remediation actions are 
listed in the actions center on the history tab.

* Semi - Reqiure approval for automated remediation actions, Pending actions can be viewed and approved in the 
pending tab.

* Semi (Approval for core folders remediation) - Approval is required for any remediation actions needed on 
files or executable in core folder.

* Semi (Approval for non-temp folders) - Approval is required for only non-temp folders.<br>
  Temporary folders :
   * \users\appdata\local\temp
   * \documents and settings\local settings\temp
   * \documents and settings\local settings\temporary
   * \windows\temp
   * \users\downloads
   * \program files\
   * \program files(x86)
   * \documents and settings\users

* No automated response - no automation allowed.





