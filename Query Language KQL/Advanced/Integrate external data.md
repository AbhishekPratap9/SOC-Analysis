The externaldata operator returns a table whose schema is defined in the query itself. And whose data is read from an external storage artifact, such as a blob in Azure Blob Storage or an Azure Data Lake Storage file.<br>
```
externaldata ( ColumnName : ColumnType [, ...] )
  [ StorageConnectionString [, ...] ]
  [with ( PropertyName = PropertyValue [, ...] )]
```

* Arguments
  * ColumnName, ColumnType: The arguments define the schema of the table. The syntax is the same as the syntax used when defining a table in. create table
  * StorageConnectionString: Storage connection strings that describe the storage artifacts holding the data to return
  * PropertyName, PropertyValue, ...: More properties that describe how to interpret the data retrieved from storage, as listed under ingestion properties

* Properties
  ![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/38f4ff2f-87be-4b68-a9b1-b1f4b4ed4c99)

```
Users
| where UserID in ((externaldata (UserID:string) [
    @"https://storageaccount.blob.core.windows.net/storagecontainer/users.txt" 
      h@"?...SAS..."]))
|

```

