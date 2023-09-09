> cd "C:\Program Files (x86)\Firebird\Firebird_2_5\bin>"

> gsec -user SYSDBA -password masterkey

GSEC> add fabio -pw newpass -fname Fabio

GSEC> quit

> mkdir c:\example-database


> isql -user fabio -password newpass

SQL> CREATE DATABASE 'c:\example-database\example-database.fdb' PAGE_SIZE 8192;

SQL> SHOW DATABASE 'c:\example-database\example-database.fdb';

SQL> quit;


> isql -user fabio -password newpass

SQL> CONNECT 'c:\example-database\example-database.fdb';
Database:  'c:\example-database\example-database.fdb', User: fabio

SQL> CREATE TABLE customer (
    id int not null primary key,
    name varchar(128) not null,
    created timestamp default current_timestamp not null,
    updated timestamp
);

SQL> SHOW TABLE customer;

SQL> quit;
