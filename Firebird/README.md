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
