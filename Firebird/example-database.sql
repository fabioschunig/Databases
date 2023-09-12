
-- create user
> cd "C:\Program Files (x86)\Firebird\Firebird_2_5\bin>"

> gsec -user SYSDBA -password masterkey

GSEC> add fabio -pw newpass -fname Fabio

GSEC> quit


-- create database file
> mkdir c:\example-database

> isql -user fabio -password newpass

SQL> CREATE DATABASE 'c:\example-database\example-database.fdb' PAGE_SIZE 8192;

SQL> SHOW DATABASE 'c:\example-database\example-database.fdb';

SQL> quit;


-- connect database
> isql -user fabio -password newpass

SQL> CONNECT 'c:\example-database\example-database.fdb';
Database:  'c:\example-database\example-database.fdb', User: fabio


-- table customer
SQL> CREATE TABLE customer (
    id int not null,
    name varchar(128) not null,
    created timestamp default current_timestamp not null,
    updated timestamp
);

SQL> ALTER TABLE customer ADD CONSTRAINT pk_customer PRIMARY KEY (id);

SQL> SHOW TABLE customer;


-- sequence for customer
SQL> CREATE SEQUENCE sq_customer;

SQL> SHOW SEQUENCE sq_customer;
Generator SQ_CUSTOMER, current value is 0


-- customer trigger for sequence
SQL> SET TERM ^ ;
CREATE TRIGGER tg_customer_bi
ACTIVE BEFORE INSERT POSITION 0
ON customer
AS
BEGIN
  if (new.id is null)
    then new.id = next value for sq_customer;
END^
SET TERM ; ^

SQL> SHOW TRIGGER tg_customer_bi;

Triggers on Table CUSTOMER:
TG_CUSTOMER_BI, Sequence: 0, Type: BEFORE INSERT, Active
AS
BEGIN
  if (new.id is null)
    then new.id = next value for sq_customer;
END
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


-- table product
SQL> CREATE TABLE product (
    id int not null,
    description varchar(128) not null,
    price decimal(12,4) default 0 not null,
    created timestamp default current_timestamp not null,
    updated timestamp
);

SQL> ALTER TABLE product ADD CONSTRAINT pk_product PRIMARY KEY (id);

SQL> SHOW TABLE product;


SQL> quit;
