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
# Permanantly
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
