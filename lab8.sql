DROP TABLE IF EXISTS items;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS supppliers;


-- ITEMS
CREATE TABLE items (
SKU 		char(4) not null,
itemID 		text, 
priceUSD	numeric(10,2),
quant 		integer,
 primary key (SKU)
 ); 

-- ORDERS
CREATE TABLE orders (
ordno		char(4) not null,
mon		text,
cid		char (4),
sid		char (4),
SKU		char (4),
quantity	integer,
priceUSD 	numeric(10,2),
comments 	text,
  primary key (ordno)
  );

-- CUSTOMERS
CREATE TABLE customers (
cid 		char(4),
address 	text,
city		text,
state		text, 
contact 	text,
 primary key(cid)
 );

-- SUPPLIERS
CREATE TABLE suppliers (
sid		char(4),
name		text,
address		text,
city		text,
state		text,
zipcode		text,
contact		text,
paymentinfo	text,
 primary key (sid)
 );

 -- ITEMS --
 INSERT INTO items (SKU, itemID, priceUSD, quant )
	VALUES ('1112', 'shorts', 10.95, 20);

INSERT INTO items (SKU, itemID, priceUSD, quant )
	VALUES ('1113', 't-shirt', 9.95, 25);

INSERT INTO items (SKU, itemID, priceUSD, quant )
	VALUES ('1114', 'socks', 5.50, 20);

INSERT INTO items (SKU, itemID, priceUSD, quant )
	VALUES ('1116', 'pants', 12.95, 15);

INSERT INTO items (SKU, itemID, priceUSD, quant )
	VALUES ('1337', 'shoes', 59.99, 30);

-- CUSTOMERS --
INSERT INTO customers (cid, address, city, state, contact)
	VALUES ('0001', '31 Money Lane', 'Brooklyn', 'NY', 'Scott');

INSERT INTO customers (cid, address, city, state, contact)
	VALUES('0002', '22 Mets Road', 'Queens', 'NY', 'Jason');

INSERT INTO customers (cid, address, city, state, contact)
	VALUES ('0003', '7980 Wickham Road', 'Middletown', 'FL', 'Vinny');

INSERT INTO customers (cid, address, city, state, contact)
	VALUES ('0004', '3122 PopPops Lane', 'Mexico', 'IL', 'Gordon');

-- SUPPLIERS --
INSERT INTO suppliers(sid, name, address, city, state, zipcode, contact, paymentinfo)
	VALUES ('1337', 'Kohls', '2255 Test Lane', 'Dallas', 'TX', '11222', 'Mary', 'Cash');

INSERT INTO suppliers(sid, name, address, city, state, zipcode, contact, paymentinfo)
	VALUES ('1338', 'Macys', '3122 Broadyway', 'Manhattan', 'NY', '10916', 'Dakota', 'Credit');
	


-- ORDERS --
INSERT INTO orders ( ordno, mon, cid, sid, SKU, quantity, priceUSD, comments)
	VALUES ('3708', 'jan', '0001', '1337', '1112', 50, 1000.00, 'none');

INSERT INTO orders ( ordno, mon, cid, sid, SKU, quantity, priceUSD, comments)
	VALUES ('3709', 'dec', '0002', '1338', '1113', 70, 1500.00, 'not paid');

INSERT INTO orders ( ordno, mon, cid, sid, SKU, quantity, priceUSD, comments)
	VALUES ('3710', 'feb', '0004', '1338', '1113', 45, 1500.00, 'half paid');


SELECT *
FROM orders

SELECT *
FROM items

SELECT *
FROM suppliers

SELECT *
FROM customers

-- QUESTION 5
SELECT itemID, quantity
FROM orders, items
WHERE quantity > 0