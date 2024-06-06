### Render operator
The render operator generates a visualization of the query results.

The supported visualizations are:
* areachart
* barchart
* columnchart
* piechart
* scatterchart
* timechart


```
SecurityEvent 
| summarize count() by Account
| render barchart
```

```
SecurityEvent 
| summarize count() by bin(TimeGenerated, 1d) 
| render timechart
```
