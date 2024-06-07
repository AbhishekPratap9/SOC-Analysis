* Join operator merges the rows of two tables to form a new table by matching the specified columns' values from each table
* Syntax
  LeftTable | join [JoinParameters] ( RightTable ) on Attributes

```
SecurityEvent 
| where EventID == "4624" 
| summarize LogOnCount=count() by EventID, Account 
| project LogOnCount, Account 
| join kind = inner (
     SecurityEvent 
     | where EventID == "4634" 
     | summarize LogOffCount=count() by EventID, Account 
     | project LogOffCount, Account 
) on Account

```

![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/b0c395b3-8fa7-4dd9-958b-aa54a987f2fb)
![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/e78d4f7a-989d-4f35-aeaa-607c0d1f40c2)

