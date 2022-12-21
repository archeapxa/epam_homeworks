Module 3 Database Administration
PART 1
1. Download MySQL server for your OS on VM.
2. Install MySQL server on VM.
![Alt text](/2_db/Screenshots/1-mysql-installed.jpg?raw=true)
image 1-mysql-installed
3. Select a subject area and describe the database schema, (minimum 3 tables)
4. Create a database on the server through the console.
image 2-db-created
image 3-tables-created
5. Fill in tables.
image 4-tables-filling
image 5-tables-filled
6. Construct and execute SELECT operator with WHERE, GROUP BY and ORDER BY.
image 6-just-select-vs-joins
image 7-select-where
image 8-select-group-by
image 9-select-order-by
7. Execute other different SQL queries DDL, DML, DCL.
DDL
image 10-DDL
DML
image 11-DML
DCL
image 12-DCL
8. Create a database of new users with different privileges. Connect to the
database as a new user and verify that the privileges allow or deny certain
actions.
My user didnt have privileges to use "bakery" DB
image 13-user-no-privileges
9. Make a selection from the main table DB MySQL.
image 14-selection-from-sql-db


PART 2
10.Make backup of your database.
image 15-db-dumped
11.Delete the table and/or part of the data in the table.
image 16-table-deleted
12.Restore your database.
image 17-db-restored
13.Transfer your local database to RDS AWS.
14.Connect to your database.
image 18-connect-remote-db
image 19-db-transferred
15.Execute SELECT operator similar step 6.
image 20-select-remote-db
16.Create the dump of your database.
image 21-remote-db-dump


PART 3 – MongoDB
17. Create a database. Use the use command to connect to a new database (If it
doesn't exist, Mongo will create it when you write to it).
image 22-mongo-db-installed
18. Create a collection. Use db.createCollection to create a collection. I'll leave the
subject up to you. Run show dbs and show collections to view your database and collections.
19. Create some documents. Insert a couple of documents into your collection. I'll
leave the subject matter up to you, perhaps cars or hats.
20. Use find() to list documents out.
image 23-mongo-collection-and-doc