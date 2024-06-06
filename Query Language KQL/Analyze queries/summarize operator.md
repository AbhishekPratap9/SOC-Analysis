```
SecurityEvent | summarize by Activity

SecurityEvent
| where EventID == "4688"
| summarize count() by Process, Computer

```
The first statement below returns one column that is a unique list of Activity column values.

The second statement returns a count of SecurityEvent rows where EventID equals 4688, and the count is grouped by Process and Computer. Because of the by clause, the result set contains three columns: Process, Computer, Count.<br>

### Aggregate functions with summarize operator
* **count(), countif() :** Returns a count of the records per summarization group
* **dcount(), dcountif() :** Returns an estimate for the number of distinct values taken by a scalar expression in the summary group
* **avg(), avgif() :** Calculates the average of Expr across the group
* **max(), maxif() :** Returns the maximum value across the group
* **min(), minif() :** Returns the minimum value across the group
* **percentile() :** an estimate for the specified nearest-rank percentile of the population defined by Expr
* **stdev(), stdevif() :** Calculates the standard deviation of Expr across the group, considering the group as a sample
* **sum(), sumif() :** Calculates the sum of Expr across the group
* **variance(), varianceif() :** Calculates the variance of Expr across the group, considering the group as a sample


### KQL statement returns three columns: "cnt", "AccountType", and "Computer". The "cnt" field name replaces the default "count_" name
```
SecurityEvent
| where TimeGenerated > ago(1h)
| where EventID == 4624
| summarize cnt=count() by AccountType, Computer

```

###  returns a count of unique IP Addresses
```
SecurityEvent
| summarize dcount(IpAddress)
```

### Example statement to detect Invalid password failures across multiple applications for the account
```
let timeframe = 30d;
let threshold = 1;
SigninLogs
| where TimeGenerated >= ago(timeframe)
| where ResultDescription has "Invalid password"
| summarize applicationCount = dcount(AppDisplayName) by UserPrincipalName, IPAddress
| where applicationCount >= threshold

```

The statement "summarize" produces a distinct count of application names and group by User and IP Address. Finally, there's a check against a variable created (threshold) to see if the number exceeds the allowed amount.

### arg_max() & arg_min() function
* The arg_max() function filter out top rows.
```
SecurityEvent 
| where Computer == "SQL12.na.contosohotels.com"
| summarize arg_max(TimeGenerated,*) by Computer

```
 following statement will return the most current row from the SecurityEvent table for the computer SQL12.NA.contosohotels.com

* The arg_min() function filter out bottom rows.
```
SecurityEvent 
| where Computer == "SQL12.na.contosohotels.com"
| summarize arg_min(TimeGenerated,*) by Computer
```
the oldest SecurityEvent for the computer SQL12.NA.contosohotels.com will be returned as the result set.

### Piping results
```
// Statement 1

SecurityEvent
| summarize arg_max(TimeGenerated, *) by Account
| where EventID == "4624"

// Statement 2

SecurityEvent
| where EventID == "4624"
| summarize arg_max(TimeGenerated, *) by Account
```

Statement 1 will have Accounts for which the last activity was a Logon.

The SecurityEvent table will first be summarized and return the most current row for each Account. Then only rows with EventID equal to 4624 (Login) will be returned.

Statement 2 will have the most recent Logon for Accounts that have logged in.

The SecurityEvent table will be filtered to only include EventID = 4624. Then these results will be summarized for the most current Logon row by Account.
