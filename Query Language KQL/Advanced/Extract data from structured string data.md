Strings fields may also contain structured data like JSON or Key-Value pairs. 
### Dynamic fields
Within a Log Analytics table, there are field types defined as Dynamic. Dynamic fields contain a key-value pair such as:
```
{"eventCategory":"Autoscale","eventName":"GetOperationStatusResult","operationId":"xxxxxxxx-6a53-4aed-bab4-575642a10226","eventProperties":"{\"OldInstancesCount\":6,\"NewInstancesCount\":5}","eventDataId":" xxxxxxxx -efe3-43c2-8c86-cd84f70039d3","eventSubmissionTimestamp":"2020-11-30T04:06:17.0503722Z","resource":"ch-appfevmss-pri","resourceGroup":"CH-RETAILRG-PRI","resourceProviderValue":"MICROSOFT.COMPUTE","subscriptionId":" xxxxxxxx -7fde-4caf-8629-41dc15e3b352","activityStatusValue":"Succeeded"}
```

To access the strings within a Dynamic field, use the dot notation. The DeviceDetail field from the SigninLogs table is of type dynamic. In this example, you could access the Operating System with the DeviceDetail.operatingSystem field name.
```
SigninLogs 
| extend OS = DeviceDetail.operatingSystem
```
The query example below shows the use of Dynamic fields with the SigninLogs table
```
// Example query for SigninLogs showing how to break out packed fields.

SigninLogs 
| extend OS = DeviceDetail.operatingSystem, Browser = DeviceDetail.browser 
| extend StatusCode = tostring(Status.errorCode), StatusDetails = tostring(Status.additionalDetails) 
| extend Date = startofday(TimeGenerated) 
| summarize count() by Date, Identity, UserDisplayName, UserPrincipalName, IPAddress, ResultType, ResultDescription, StatusCode, StatusDetails 
| sort by Date
```

### JSON
KQL provides functions to manipulate JSON stored in string fields. Many logs submit data in JSON format, which requires you to know how to transform JSON data to queryable fields.<br>
JSON related functions and operators
![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/f8e2d36a-2189-4b66-9a56-d30c9ecaf1da)

```
SigninLogs 
| extend AuthDetails =  parse_json(AuthenticationDetails) 
| extend AuthMethod =  AuthDetails[0].authenticationMethod 
| extend AuthResult = AuthDetails[0].["authenticationStepResultDetail"] 
| project AuthMethod, AuthResult, AuthDetails 


SigninLogs 
| mv-expand AuthDetails = parse_json(AuthenticationDetails) 
| project AuthDetails

SigninLogs 
| mv-apply AuthDetails = parse_json(AuthenticationDetails) on
(where AuthDetails.authenticationMethod == "Password")
```

