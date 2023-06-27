CREATE TABLE IF NOT EXISTS accounts(
  id VARCHAR(255) NOT NULL primary key COMMENT 'primary key',
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
  name varchar(255) COMMENT 'User Name',
  email varchar(255) COMMENT 'User Email',
  picture varchar(255) COMMENT 'User Picture'
) default charset utf8 COMMENT '';


CREATE TABLE cars(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  make VARCHAR(100) NOT NULL,
  model VARCHAR(100) NOT NULL,
  year INT NOT NULL DEFAULT 1990,
  price DOUBLE NOT NULL DEFAULT 1.00,
  color VARCHAR(100) NOT NULL,
  description VARCHAR(500),

  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
)  default charset utf8 COMMENT '';

INSERT INTO cars
(make, model, year, price, color, description)
VALUES
("Fast", "Chevy", 2023, 20000, "Pearly", "Kinda looks like a knock-off cyber truck, which actually says a lot.");
INSERT INTO cars
(make, model, year, price, color, description)
VALUES
("Mazda", "Miata", 2023, 34, "White", "1/57 scale model car. Assembled by the most handsome instructor.");
INSERT INTO cars
(make, model, year, price, color, description)
VALUES
("Mazda", "RX7", 2022, 120, "Black", "1/57 scale model car. New in Packaging. You will need your own tools to assemble.");
INSERT INTO cars
(make, model, year, price, color, description)
VALUES
("Dodge", "Baha", 1993, 7200, "Red", "Great shape, drives fast, and good on sand. Just needs wheels.");
INSERT INTO cars
(make, model, year, price, color, description)
VALUES
("Toyota", "Scorpion", 2000, 9000, "Black", "For all your FAST and FAMILY needs.");

SELECT * FROM cars WHERE id = LAST_INSERT_ID();

SELECT * FROM cars ORDER BY `createdAt` DESC;
SELECT * FROM cars WHERE price < 8000 ORDER BY price DESC;
SELECT * FROM cars WHERE description LIKE "%1/57%" ORDER BY price ASC;
SELECT * FROM cars WHERE description LIKE "%1/57%" ORDER BY price ASC LIMIT 1, 100;

SELECT * FROM cars WHERE id = 100;


CREATE TABLE houses(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  bedrooms INT NOT NULL,
  bathrooms DOUBLE NOT NULL,
  year INT NOT NULL,
  price DOUBLE NOT NULL DEFAULT 1.00,
  sqft INT NOT NULL,
  description VARCHAR(500),

  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
)  default charset utf8 COMMENT '';

INSERT INTO houses
(bedrooms, bathrooms, year, price, sqft, description)
VALUES
(3, 2, 2023, 200000, 2500, "Kinda looks like a knock-off monster truck, which actually says a lot.");