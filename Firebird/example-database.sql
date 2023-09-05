> cd "C:\Program Files (x86)\Firebird\Firebird_2_5\bin>"

> gsec -user SYSDBA -password masterkey

GSEC> add fabio -pw newpass -fname Fabio

GSEC> quit

> mkdir c:\example-database

> isql -user fabio -password newpass

SQL> CREATE DATABASE 'c:\example-database\example-database.fdb' page_size 8192;

SQL> show database 'c:\example-database\example-database.fdb';

SQL> quit;
