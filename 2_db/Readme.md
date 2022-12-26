## Module 2 Database Administration

### PART 1

1. Download MySQL server for your OS on VM.
2. Install MySQL server on VM.

![image 1-mysql-installed](/2_db/Screenshots/1-mysql-installed.jpg?raw=true)

3. Select a subject area and describe the database schema, (minimum 3 tables)
4. Create a database on the server through the console.

![image 2-db-created](/2_db/Screenshots/2-db-created.jpg?raw=true)

![image 3-tables-created](/2_db/Screenshots/3-tables-created.jpg?raw=true)

5. Fill in tables.

![image 4-tables-filling](/2_db/Screenshots/4-tables-filling.jpg?raw=true)

![image 5-tables-filled](/2_db/Screenshots/5-tables-filled.jpg?raw=true)

6. Construct and execute SELECT operator with WHERE, GROUP BY and ORDER BY.

![image 6-just-select-vs-joins](/2_db/Screenshots/6-just-select-vs-joins.jpg?raw=true)

![image 7-select-where](/2_db/Screenshots/7-select-where.jpg?raw=true)

![image 8-select-group-by](/2_db/Screenshots/8-select-group-by.jpg?raw=true)

![image 9-select-order-by](/2_db/Screenshots/9-select-order-by.jpg?raw=true)

7. Execute other different SQL queries DDL, DML, DCL.

DDL

![image 10-DDL](/2_db/Screenshots/10-DDL.jpg?raw=true)

DML

![image 11-DML](/2_db/Screenshots/11-DML.jpg?raw=true)

DCL

![image 12-DCL](/2_db/Screenshots/12-DCL.jpg?raw=true)

8. Create a database of new users with different privileges. Connect to the
   database as a new user and verify that the privileges allow or deny certain
   actions.
   My user didnt have privileges to use "bakery" DB

![image 13-user-no-privileges](/2_db/Screenshots/13-user-no-privileges.jpg?raw=true)

9. Make a selection from the main table DB MySQL.

![image 14-selection-from-sql-db](/2_db/Screenshots/14-selection-from-sql-db.jpg?raw=true)

### PART 2

10.Make backup of your database.

![image 15-db-dumped](/2_db/Screenshots/15-db-dumped.jpg?raw=true)

11.Delete the table and/or part of the data in the table.

![image 16-table-deleted](/2_db/Screenshots/16-table-deleted.jpg?raw=true)

12.Restore your database.

![image 17-db-restored](/2_db/Screenshots/17-db-restored.jpg?raw=true)

13.Transfer your local database to RDS AWS.

14.Connect to your database.

![image 18-connect-remote-db](/2_db/Screenshots/18-connect-remote-db.jpg?raw=true)

![image 19-db-transferred](/2_db/Screenshots/19-db-transferred.jpg?raw=true)

15.Execute SELECT operator similar step 6.

![image 20-select-remote-db](/2_db/Screenshots/20-select-remote-db.jpg?raw=true)

16.Create the dump of your database.

![image 21-remote-db-dump](/2_db/Screenshots/21-remote-db-dump.jpg?raw=true)

### PART 3 – MongoDB

17. Create a database. Use the use command to connect to a new database (If it doesn't exist, Mongo will create it when you write to it).

![image 22-mongo-db-installed](/2_db/Screenshots/22-mongo-db-installed.jpg?raw=true)

18. Create a collection. Use db.createCollection to create a collection. I'll leave the subject up to you. Run show dbs and show collections to view your database and collections.

19. Create some documents. Insert a couple of documents into your collection. I'll leave the subject matter up to you, perhaps cars or hats.

20. Use find() to list documents out.

![image 23-mongo-collection-and-doc](/2_db/Screenshots/23-mongo-collection-and-doc.jpg?raw=true)
