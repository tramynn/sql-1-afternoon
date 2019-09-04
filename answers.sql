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

