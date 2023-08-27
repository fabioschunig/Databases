# Firebird
Firebird code snippets

## Firebird locations
* Windows           *C:\Program Files\Firebird\Firebird_version_\bin*
* Windows (32 bits) *C:\Program Files (x86)\Firebird\Firebird_2_5\bin*

## Login

```bash
isql -user SYSDBA -password masterkey
```

## GSEC login

```bash
gsec -user SYSDBA -password masterkey

GSEC> display

     user name                    uid   gid admin     full name
------------------------------------------------------------------------------------------------
SYSDBA                              0     0           Sql Server Administrator
```
