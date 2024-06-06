Let statements bind names to expressions. 

* Declare and reuse variables
```
let timeOffset = 7d;
let discardEventId = 4688;
SecurityEvent
| where TimeGenerated > ago(timeOffset*2) and TimeGenerated < ago(timeOffset)
| where EventID != discardEventId

```

* Let statements allow for the creation of dynamic tables or lists.
  ```
let suspiciousAccounts = datatable(account: string) [
@"\administrator",
@"NT AUTHORITY\SYSTEM"
];
SecurityEvent | where Account in (suspiciousAccounts)

  ```

```
let LowActivityAccounts =
    SecurityEvent 
    | summarize cnt = count() by Account 
    | where cnt < 1000;
LowActivityAccounts | where Account contains "SQL"

```
  
