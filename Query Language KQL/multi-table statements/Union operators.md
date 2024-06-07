Union operator takes two or more tables and returns the rows of all of them. <br>
```
SecurityEvent 
| union SigninLogs  
```
* Return all rows of SecurityEvent and all rows of SigninLogs

```
SecurityEvent 
| union SigninLogs  
| summarize count() 
| project count_
```
* Return one row and column, which is the count of all rows of SecurityEvent and all rows of SigninLogs


