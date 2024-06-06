The project operators control what columns to include, add, remove, or rename in the result set of a statement.

### multiple types of project operators
* **project:**  Select the columns to include, rename or drop, and insert new computed columns.
* **project-away:** Select what columns from the input to exclude from the output.
* **project-keep:**  	Select what columns from the input to keep in the output.
* **project-rename:** Select the columns to rename in the resulting output.
* **project-reorder:** Set the column order in the resulting output.


### project

```
SecurityEvent
| project Computer, Account


SecurityEvent
| where ProcessName != "" and Process != ""
| extend StartDir =  substring(ProcessName,0, string_size(ProcessName)-string_size(Process))
| order by StartDir desc, Process asc
| project Process, StartDir

```

### project-away
```
SecurityEvent
| where ProcessName != "" and Process != ""
| extend StartDir =  substring(ProcessName,0, string_size(ProcessName)-string_size(Process))
| order by StartDir desc, Process asc
| project-away ProcessName

```






