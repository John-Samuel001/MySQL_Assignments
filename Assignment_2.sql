create database sales;

use sales;

create table orders (Order_Id int , Customer_name varchar(30) , Product_Category varchar(30) , Ordered_item varchar(30), Contact_No varchar(10));

select * from sales_orders;

alter table orders rename to sales_orders; # change table name\

insert into sales_orders (Order_Id, Customer_name, Product_Category, Ordered_item, Contact_No) values

(101, 'Arun Kumar', 'Electronics', 'Smartphone', '9876543210'),
(102, 'Sneha Ramesh', 'Fashion', 'T-Shirt', '9823456789'),
(103, 'Rahul Menon', 'Home Appliances', 'Mixer Grinder', '9787654321'),
(104, 'Priya Das', 'Books', 'Fiction Novel', '9765432109'),
(105, 'Vishal Nair', 'Grocery', 'Organic Rice', '9856784321'),
(106, 'Anjali Roy', 'Beauty', 'Face Cream', '9832145678'),
(107, 'Manoj Pillai', 'Sports', 'Badminton Racket', '9845671234'),
(108, 'Neha Verma', 'Furniture', 'Office Chair', '9812345678'),
(109, 'Rajesh Gupta', 'Automotive', 'Car Tyres', '9798765432'),
(110, 'Kavya Mohan', 'Toys', 'Lego Set', '9801234567');

ALTER TABLE sales_orders ADD order_quantity INT NOT NULL;

UPDATE sales_orders 
SET Ordered_Item = 'new item' 
WHERE Order_Id = 101;

DROP TABLE sales_orders;


