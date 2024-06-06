The extend operator will create calculated columns and append the new columns to the result set.<br>
* the extend operator to create a new column, StartDir containing the directory a process was started in. The StartDir column is a calculated column containing the results of a substring function.<br>

```
SecurityEvent
| where ProcessName != "mg.exe" and Process != "disk"
| extend StartDir =  substring(ProcessName,0, string_size(ProcessName)-string_size(Process))
```
