Sort the rows of the input table by one or more columns.

* The order by operator can utilize any column or multiple columns by using a comma separator. Each column can be ascending or descending. The default order for a column is descending.<br>

```
SecurityEvent
| where ProcessName != "mg.exe" and Process != "disk"
| extend StartDir =  substring(ProcessName,0, string_size(ProcessName)-string_size(Process))
| order by StartDir desc, Process asc

```
