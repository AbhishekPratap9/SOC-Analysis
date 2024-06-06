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
