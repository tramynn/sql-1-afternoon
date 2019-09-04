-- Table - Person
-- 1) Create a table called person that records a person's id, name, age, height ( in cm ), city, favorite_color.
-- id should be an auto-incrementing id/primary key - Use type: SERIAL
CREATE TABLE person (
	person_id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  age INT NOT NULL,
  height INT NOT NULL,
  city VARCHAR(255) NOT NULL,
  favorite_color VARCHAR(255) NOT NULL
); 
-- 2) Add 5 different people into the person database.
-- Remember to not include the person_id because it should auto-increment.
INSERT INTO person (name, age, height, city, favorite_color)
VALUES ('Rob Johnson', 27, 180, 'Austin', 'Gray'),
('Madelyn Arsenault', 20, 173, 'Salt Lake', 'Blue'),
('Tramy Nguyen', 24, 125, 'Los Angeles', 'Pink'),
('Trey Waller', 20, 186, 'Arlington', 'Gray'),
('David Newman', 28, 174, 'Mckinney', 'Black');
-- 3) List all the people in the person table by height from tallest to shortest.
SELECT * FROM person ORDER BY height DESC;
-- 4) List all the people in the person table by height from shortest to tallest.
SELECT * FROM person ORDER BY height ASC;
-- 5) List all the people in the person table by age from oldest to youngest.
SELECT * FROM person ORDER BY age DESC;
-- 6) List all the people in the person table older than age 20.
SELECT * FROM person WHERE age > 20;
-- 7) List all the people in the person table that are exactly 18.
SELECT * FROM person WHERE age = 18;
-- 8) List all the people in the person table that are less than 20 and older than 30.
SELECT * FROM person WHERE age < 20 OR age > 30;
-- 9) List all the people in the person table that are not 27 (Use not equals).
SELECT * FROM person WHERE age != 27;
-- 10) List all the people in the person table where their favorite color is not red.
SELECT * FROM person WHERE favorite_color != 'red';
-- 11) List all the people in the person table where their favorite color is not red and is not blue.
SELECT * FROM person WHERE favorite_color != 'red' AND favorite_color != 'blue';
-- 12) List all the people in the person table where their favorite color is orange or green.
SELECT * FROM person WHERE favorite_color = 'orange' OR favorite_color = 'green';
-- 13) List all the people in the person table where their favorite color is orange, green or blue (use IN).
SELECT * FROM person WHERE favorite_color IN ('orange', 'green', 'blue');
-- 14) List all the people in the person table where their favorite color is yellow or purple (use IN).
SELECT * FROM person WHERE favorite_color IN ('yellow', 'purple');

-- TABLE -- ORDERS
-- 1) Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.
CREATE TABLE orders (
	order_id SERIAL PRIMARY KEY,
  person_id INT NOT NULL,
  product_name VARCHAR(255) NOT NULL,
  product_price NUMERIC NOT NULL,
  quantity INT NOT NULL
  );
-- 2) Add 5 orders to the orders table.
-- Make orders for at least two different people.
-- person_id should be different for different people.
INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES
(1, 'Jasmine Green Milk Tea with Boba', 2.22, 1),
(2, 'Oolong Milk Tea with Boba', 3.33, 2),
(3, 'Matcha Tea with Boba', 4.44, 1),
(4, 'Wintermelon Tea', 5.55, 1),
(5, 'Oolong Milk Tea', 6.66, 2);
-- 3) Select all the records from the orders table.
SELECT * FROM orders;
-- 4) Calculate the total number of products ordered.
SELECT SUM(quantity) FROM orders;
-- 5) Calculate the total order price.
SELECT SUM(product_price) FROM orders;
-- 6) Calculate the total order price by a single person_id.
SELECT SUM(product_price * quantity) FROM orders WHERE person_id = 1;

-- TABLE -- ARTIST
-- 1) Add 3 new artists to the artist table. ( It's already created )
INSERT INTO artist (name)
VALUES 
('Marshmello'),
('EDX'),
('AC Slater');
-- 2) Select 10 artists in reverse alphabetical order.
SELECT * FROM artist ORDER BY name DESC LIMIT 10;
-- 3) Select 5 artists in alphabetical order.
SELECT * FROM artist ORDER BY name ASC LIMIT 5;
-- 4) Select all artists that start with the word 'Black'.
SELECT * FROM artist WHERE name LIKE 'Black%';
-- 5) Select all artists that contain the word 'Black'.
SELECT * FROM artist WHERE name = '%Black%';

-- TABLE - employee
-- 1) List all employee first and last names only that live in Calgary.
SELECT first_name, last_name FROM employee WHERE city = ('Calgary');
-- 2) Find the birthdate for the youngest employee.
SELECT MAX(birth_date) FROM employee;
-- 3) Find the birthdate for the oldest employee.
SELECT MIN(birth_date) FROM employee;
-- 4) Find everyone that reports to Nancy Edwards (Use the ReportsTo column).
SELECT * FROM employee where reports_to = 2;
-- 5) You will need to query the employee table to find the Id for Nancy Edwards
SELECT * FROM employee WHERE reports_to = 2;
-- 6) Count how many people live in Lethbridge.
SELECT COUNT(*) FROM employee WHERE city = 'Lethbridge';
