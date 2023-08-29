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

```bash
isql -user SYSDBA -password masterkey

SQL> CREATE DATABASE 'c:\tmp\test_database.fdb' page_size 8192;

SQL> SHOW TABLE RDB$RELATIONS;

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
