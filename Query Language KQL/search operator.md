The search operator provides a multi-table/multi-column search experience.<br>

```
search "err"

search in (SecurityEvent,SecurityAlert,A*) "err"
```

The first statement will search for "err" across all tables. The second statement will search for "err" in tables SecurityEvent, SecurityAlert, and tables starting with A.<br>
