# Firebird
Firebird code snippets

## Firebird locations
* Windows                     *C:\Program Files\Firebird\Firebird_version_\bin*
* Windows (32 bits install)   *C:\Program Files (x86)\Firebird\Firebird_2_5\bin*

## Login

```bash
isql -user SYSDBA -password masterkey
```

## GSEC - User management

```bash
gsec -user SYSDBA -password masterkey

GSEC> display

     user name                    uid   gid admin     full name
------------------------------------------------------------------------------------------------
SYSDBA                              0     0           Sql Server Administrator


GSEC> add newuser -pw newpass -fname New -lname User

GSEC> display newuser
     user name                    uid   gid admin     full name
------------------------------------------------------------------------------------------------
NEWUSER                             0     0           New  User


GSEC> add newadmin -pw newpass -fname New -mname admin -lname User -admin yes

GSEC> display newadmin
     user name                    uid   gid admin     full name
------------------------------------------------------------------------------------------------
NEWADMIN                            0     0 admin     New admin User


GSEC> delete newuser

GSEC> delete newadmin

GSEC> quit
```

## Creating a database

```sql
SQL> CREATE DATABASE 'c:\tmp\test_database.fdb' page_size 8192;

SQL> SHOW DATABASE;
Database: c:\tmp\test_database.fdb
        Owner: SYSDBA
PAGE_SIZE 8192
Number of DB pages allocated = 164
Sweep interval = 20000
Forced Writes are ON
Transaction - oldest = 1
Transaction - oldest active = 2
Transaction - oldest snapshot = 2
Transaction - Next = 6
ODS = 11.2
Default Character set: NONE
```

## Creating a table

```sql
CREATE TABLE customer (
  id int not null primary key,
  name varchar(128) not null,
  created timestamp default current_timestamp not null,
  updated timestamp
);

SQL> SHOW TABLE customer;
ID                              INTEGER Not Null
NAME                            VARCHAR(128) Not Null
CREATED                         TIMESTAMP Not Null default current_timestamp
UPDATED                         TIMESTAMP Nullable
CONSTRAINT INTEG_2:
  Primary key (ID)

SQL> INSERT INTO customer (id, name) VALUES (1, 'Test customer');
SQL> INSERT INTO customer (id, name) VALUES (2, 'Test customer 2');
SQL> INSERT INTO customer (id, name) VALUES (3, 'Test customer 3');

SQL> SELECT id, name FROM customer;

          ID NAME
============ ===============================================================================
           1 Test customer
           2 Test customer 2
           3 Test customer 3
```
