create database inventorym;

use inventorym;

show tables;

mysql> show tables;
+------------------------+
| Tables_in_inventorym   |
+------------------------+
| inventory_customer_tbl |
| item                   |
| purchase               |
| sales                  |
| users                  |
+------------------------+
5 rows in set (0.82 sec)

desc inventory_customer_tbl;

mysql> desc inventory_customer_tbl;
+--------------+--------------+------+-----+---------+----------------+
| Field        | Type         | Null | Key | Default | Extra          |
+--------------+--------------+------+-----+---------+----------------+
| id           | bigint       | NO   | PRI | NULL    | auto_increment |
| address      | varchar(255) | YES  |     | NULL    |                |
| address2     | varchar(255) | YES  |     | NULL    |                |
| city         | varchar(255) | YES  |     | NULL    |                |
| customer_id  | int          | NO   |     | NULL    |                |
| district     | varchar(255) | YES  |     | NULL    |                |
| email        | varchar(255) | YES  |     | NULL    |                |
| full_name    | varchar(255) | YES  |     | NULL    |                |
| phone2       | int          | NO   |     | NULL    |                |
| phone_number | int          | NO   |     | NULL    |                |
| status       | varchar(255) | YES  |     | NULL    |                |
+--------------+--------------+------+-----+---------+----------------+
11 rows in set (0.35 sec)

mysql> desc item;
+-------------+--------------+------+-----+---------+----------------+
| Field       | Type         | Null | Key | Default | Extra          |
+-------------+--------------+------+-----+---------+----------------+
| id          | bigint       | NO   | PRI | NULL    | auto_increment |
| description | varchar(255) | YES  |     | NULL    |                |
| item_name   | varchar(255) | YES  |     | NULL    |                |
| item_number | int          | NO   |     | NULL    |                |
| product_id  | int          | NO   |     | NULL    |                |
| quantity    | bigint       | NO   |     | NULL    |                |
| total_price | bigint       | NO   |     | NULL    |                |
| unit_price  | bigint       | NO   |     | NULL    |                |
+-------------+--------------+------+-----+---------+----------------+
8 rows in set (0.14 sec)

mysql> desc purchase;
+---------------+--------------+------+-----+---------+----------------+
| Field         | Type         | Null | Key | Default | Extra          |
+---------------+--------------+------+-----+---------+----------------+
| id            | bigint       | NO   | PRI | NULL    | auto_increment |
| current_stock | bigint       | NO   |     | NULL    |                |
| item_name     | varchar(255) | YES  |     | NULL    |                |
| item_number   | int          | NO   |     | NULL    |                |
| purchase_id   | int          | NO   |     | NULL    |                |
| quantity      | bigint       | NO   |     | NULL    |                |
| sale_date     | bigint       | NO   |     | NULL    |                |
| total_cost    | bigint       | NO   |     | NULL    |                |
| unity_price   | bigint       | NO   |     | NULL    |                |
| vendor_name   | varchar(255) | YES  |     | NULL    |                |
+---------------+--------------+------+-----+---------+----------------+
10 rows in set (0.00 sec)

mysql> desc sales;
+---------------+--------------+------+-----+---------+----------------+
| Field         | Type         | Null | Key | Default | Extra          |
+---------------+--------------+------+-----+---------+----------------+
| id            | bigint       | NO   | PRI | NULL    | auto_increment |
| customer_id   | int          | YES  |     | NULL    |                |
| customer_name | varchar(255) | YES  |     | NULL    |                |
| discount      | bigint       | YES  |     | NULL    |                |
| item_name     | varchar(255) | YES  |     | NULL    |                |
| item_number   | int          | YES  |     | NULL    |                |
| quantity      | bigint       | YES  |     | NULL    |                |
| sale_date     | bigint       | YES  |     | NULL    |                |
| sale_id       | int          | YES  |     | NULL    |                |
| total         | bigint       | YES  |     | NULL    |                |
| total_stock   | bigint       | YES  |     | NULL    |                |
| unity_price   | bigint       | YES  |     | NULL    |                |
+---------------+--------------+------+-----+---------+----------------+
12 rows in set (0.11 sec)


mysql> desc users;
+-----------+--------------+------+-----+---------+----------------+
| Field     | Type         | Null | Key | Default | Extra          |
+-----------+--------------+------+-----+---------+----------------+
| id        | bigint       | NO   | PRI | NULL    | auto_increment |
| name      | varchar(255) | YES  |     | NULL    |                |
| password  | varchar(255) | YES  |     | NULL    |                |
| user_name | varchar(255) | YES  |     | NULL    |                |
+-----------+--------------+------+-----+---------+----------------+
4 rows in set (0.03 sec)


for updating the particular user information in sql

update user set password="new password" where id=?;


for deleting the record in a table

delete from user where id=?;


adding the data to the table

insert into user (id,name,email,password,phone) values(?,?,?,?,?);



























































































