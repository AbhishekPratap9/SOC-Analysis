Set-MpPreference -AttackSurfaceReductionRules_Ids <rule ID> -AttackSurfaceReductionRules_Actions Enabled

:: To enable attack surface reduction rules in audit mode, use the following cmdlet:
Add-MpPreference -AttackSurfaceReductionRules_Ids <rule ID> -AttackSurfaceReductionRules_Actions AuditMode

:: To turn off attack surface reduction rules, use the following cmdlet:
Add-MpPreference -AttackSurfaceReductionRules_Ids <rule ID> -AttackSurfaceReductionRules_Actions Disabled

:: You must specify the state individually for each rule, but you can combine rules and states in a comma-separated list.

:: In the following example, the first two rules will be enabled, the third rule will be disabled, and the fourth rule will be enabled in audit mode:
Set-MpPreference -AttackSurfaceReductionRules_Ids <rule ID 1>,<rule ID 2>,<rule ID 3>,<rule ID 4> -AttackSurfaceReductionRules_Actions Enabled, Enabled, Disabled, AuditMode

:: You can also use the Add-MpPreference PowerShell verb to add new rules to the existing list.

::Set-MpPreference will always overwrite the existing set of rules. If you want to add to the existing set, you should use Add-MpPreference instead. You can obtain a list of rules and their current state by using Get-MpPreference.

:: To exclude files and folders from attack surface reduction rules, use the following cmdlet:
Add-MpPreference -AttackSurfaceReductionOnlyExclusions "<fully qualified path or resource>"

