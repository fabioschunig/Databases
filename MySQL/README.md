# MySQL
MySQL code snippets

## MySQL Locations
* Mac             */usr/local/mysql/bin*
* Windows         */Program Files/MySQL/MySQL _version_/bin*
* Xampp           */xampp/mysql/bin*
* Lampp           */opt/lampp/bin*

## Add MySQL to your PATH

```bash
# Current Session
export PATH=${PATH}:/opt/lampp/bin
# Permanently
echo 'export PATH=$PATH:/opt/lampp/bin' >> ~/.profile
```

## Login

```bash
mysql -u root -p
```

## Show users

```sql
SELECT user, host FROM mysql.user;
```

## Create user

```sql
CREATE USER 'someuser'@'localhost' IDENTIFIED BY 'somepassword';
```

## Grant all privileges on all databases

```sql
GRANT ALL PRIVILEGES ON * . * TO 'someuser'@'localhost';
FLUSH PRIVILEGES;
```

## Show grants

```sql
SHOW GRANTS FOR 'someuser'@'localhost';
```

## Remove grants

```sql
REVOKE ALL PRIVILEGES, GRANT OPTION FROM 'someuser'@'localhost';
```

## Delete user

```sql
DROP USER 'someuser'@'localhost';
```
