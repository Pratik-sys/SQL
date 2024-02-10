-- Create Sequence 
CREATE SEQUENCE IF NOT EXISTS user_serial
	START WITH 1001
	INCREMENT BY 5;


CREATE SEQUENCE IF NOT EXISTS product_serial
	START WITH 2001
	INCREMENT BY 5;

CREATE SEQUENCE IF NOT EXISTS order_serial
	START WITH 3001
	INCREMENT BY 5;

CREATE SEQUENCE IF NOT EXISTS order_num
	START WITH 5521
	INCREMENT BY 5;
	
-- Create tables

CREATE TABLE CUSTOMERS(
	
	user_id INTEGER PRIMARY KEY DEFAULT NEXTVAL('user_serial'),
	username VARCHAR(255),
	email VARCHAR(255)
);

CREATE TABLE PRODUCTS(

	product_id INTEGER PRIMARY KEY DEFAULT NEXTVAL('product_serial'),
	product_name VARCHAR(255),
	product_price FLOAT
);

CREATE TABLE ORDERS(
	order_id INTEGER  PRIMARY KEY DEFAULT NEXTVAL('order_serial'), 
	order_Date TEXT NOT NULL DEFAULT TO_CHAR (CURRENT_DATE, 'YYYMMDD'),
	order_number INTEGER NOT NULL DEFAULT NEXTVAL('order_num'),
	user_id INTEGER REFERENCES CUSTOMERS(user_id) NOT NULL,
	product_id INTEGER REFERENCES PRODUCTS(product_id) NOT NULL 
	
);
--------------------------------------------------------------------------------------------------------------

-- Insert Dummy data into the customers table

INSERT INTO CUSTOMERS (username,email) VALUES ('test', 'test.test@gmail.com');
INSERT INTO CUSTOMERS (username,email) VALUES ('leo', 'leo24@gmail.com');
INSERT INTO CUSTOMERS (username,email) VALUES ('sheldon', 'sheldon45@gmail.com');
INSERT INTO CUSTOMERS (username,email) VALUES ('heinkin', 'heinkin56@gmail.com');
INSERT INTO CUSTOMERS (username,email) VALUES ('sam', 'sam2@gmail.com');

-- check for the inserted data

SELECT * FROM CUSTOMERS;
------------------------------------------------------------------------------------------------------------- 

---- Insert Dummy data into the products table

INSERT INTO PRODUCTS (PRODUCT_NAME,PRODUCT_PRICE) VALUES ('Charger Brick', 1000);
INSERT INTO PRODUCTS (PRODUCT_NAME,PRODUCT_PRICE) VALUES ('Dell Laptop', 50000);
INSERT INTO PRODUCTS (PRODUCT_NAME,PRODUCT_PRICE) VALUES ('Portronics Mouse', 600);
INSERT INTO PRODUCTS (PRODUCT_NAME,PRODUCT_PRICE) VALUES ('Smart watch', 5000);
INSERT INTO PRODUCTS (PRODUCT_NAME,PRODUCT_PRICE) VALUES ('Mi TV', 30000);
INSERT INTO PRODUCTS (PRODUCT_NAME,PRODUCT_PRICE) VALUES ('LG Washin Machine', 40000);
INSERT INTO PRODUCTS (PRODUCT_NAME,PRODUCT_PRICE) VALUES ('AC', 45000);

-- check for the inserted data

SELECT * FROM PRODUCTS;
------------------------------------------------------------------------------------------------------------- 
