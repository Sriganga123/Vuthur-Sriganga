CREATE DATABASE Ecommerce;
use [Ecommerce];
CREATE TABLE customers
(
  customerID INT PRIMARY KEY,
  firstName VARCHAR(50),
  lastName VARCHAR(50),
  Email VARCHAR(50),
  address VARCHAR(50)
  );
CREATE TABLE products
(
   productID INT PRIMARY KEY,
   name VARCHAR(30),
   Description VARCHAR(30),
   price FLOAT,
   stockQuantity INT
   );
CREATE TABLE cart
(
  cartID INT PRIMARY KEY,
  customerID INT,FOREIGN KEY(customerID) REFERENCES customers(customerID),
  productid INT ,FOREIGN KEY(productid) REFERENCES products(productid),
  quantity INT
  );
CREATE TABLE orders
(
  orderID INT PRIMARY KEY,
  customerID INT,FOREIGN KEY(customerID) REFERENCES customers(customerID),
  orderDate DATE,
  totalprice FLOAT
  shippingAddress VARCHAR(100)
  );
  
CREATE TABLE OrderItem
  (
    orderItemID INT PRIMARY KEY,
	orderID INT,FOREIGN KEY(orderID) REFERENCES orders(orderID),
	productid INT ,FOREIGN KEY(productid) REFERENCES products(productid),
	quantity INT,
	itemAmount FLOAT,
);
alter table Orders add shippingAddress VARCHAR(100);

INSERT INTO customers([customerID],[firstName],[lastName],[Email],[address])
VALUES(1 ,'John',' Doe',' johndoe@example.com', '123 Main St, City'),
		(2 ,'Jane',' Smith', 'janesmith@example.com', '456 Elm St, Town'),
        (3 ,'Robert', 'Johnson',' robert@example.com',' 789 Oak St, Village'),
		(4 ,'Sarah',' Brown', 'sarah@example.com',' 101 Pine St, Suburb'),
		(5,' David',' Lee',' david@example.com',' 234 Cedar St, District'),
		(6,' Laura',' Hall',' laura@example.com',' 567 Birch St, County'),
		(7,' Michael',' Davis',' michael@example.com',' 890 Maple St, State'),
		(8,' Emma',' Wilson',' emma@example.com',' 321 Redwood St, Country'),
		(9,' William',' Taylor',' william@example.com',' 432 Spruce St, Province'),
		(10,' Olivia',' Adams',' olivia@example.com',' 765 Fir St, Territory');
	SELECT * FROM customers;

INSERT INTO products([productID],[name],[Description],[price],[stockQuantity])
VALUES(1 ,'Laptop',' High-performance laptop', 800.00, 10),
	   (2,' Smartphone',' Latest smartphone', 600.00, 15),
       (3,' Tablet',' Portable tablet', 300.00, 20),
	   (4,' Headphones',' Noise-canceling', 150.00, 30),
	   (5,' TV',' 4K Smart TV', 900.00, 5),
		(6,' Coffee Maker ','Automatic coffee maker', 50.00, 25),
		(7 ,'Refrigerator',' Energy-efficient', 700.00, 10),
		(8,' Microwave Oven',' Countertop microwave', 80.00 ,15),
		(9,' Blender',' High-speed blender', 70.00, 20),
		(10,' Vacuum Cleaner',' Bagless vacuum cleaner', 120.00 ,10);
	SELECT * FROM products;

INSERT INTO orders([orderID],[customerID],[orderDate],[totalAmount])
VALUES(1, 1,' 2023-01-05', 1200.00),
		(2, 2,' 2023-02-10', 900.00),
		(3 ,3,' 2023-03-15', 300.00),
		(4 ,4, '2023-04-20', 150.00),
		(5 ,5 ,'2023-05-25', 1800.00),
		(6 ,6 ,'2023-06-30', 400.00),
		(7, 7, '2023-07-05', 700.00),
		(8,8,' 2023-08-10', 160.00),
		(9, 9,' 2023-09-15', 140.00),
		(10, 10,' 2023-10-20', 1400.00);
	SELECT * FROM Orders;

	INSERT INTO OrderItem([orderItemID],[orderID],[productid],[quantity],[itemAmount])
	VALUES(1, 1, 1, 2, 1600.00),
			(2 ,1, 3, 1 ,300.00),
			(3, 2, 2, 3 ,1800.00),
			(4, 3, 5, 2, 1800.00),
			(5, 4, 4 ,4, 600.00),
			(6, 4 ,6, 1, 50.00),
			(7, 5, 1 ,1, 800.00),
			(8 ,5, 2, 2 ,1200.00),
			(9, 6, 10, 2, 240.00),
			(10 ,6, 9, 3 ,210.00);
	SELECT * FROM OrderItem;
	INSERT INTO cart([cartID],[customerID],[productid],[quantity])
	VALUES(1, 1, 1, 2),
		(2 ,1, 3, 1),
		(3 ,2, 2, 3),
		(4 ,3, 4 ,4),
			(5, 3, 5, 2),
			(6 ,4 ,6, 1),
			(7, 5, 1, 1),
			(8, 6, 10, 2),
			(9 ,6, 9, 3),
			(10, 7, 7, 2);
	SELECT * FROM cart;
