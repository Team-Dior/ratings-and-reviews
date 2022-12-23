DROP DATABASE IF EXISTS randrDB;

CREATE DATABASE randrDB;

USE randrDB;

CREATE TABLE review (
  id SERIAL PRIMARY KEY,
  product_id SERIAL,
  rating INT,
  date BIGINT,
  summary VARCHAR(1000),
  body VARCHAR(1000),
  recommended BOOLEAN,
  reported BOOLEAN,
  reviewer_name VARCHAR(50),
  reviewer_email VARCHAR(50),
  response VARCHAR(1000),
  helpfulness INT
);

COPY reviews
FROM ''
DELIMITER ','
CSV HEADER;

CREATE TABLE photos (
  id SERIAL PRIMARY KEY,
  review_id INT,
  url TEXT,
  FOREIGN KEY
)

COPY photos
FROM ''
DELIMITER ','
CSV HEADER;

CREATE TABLE characteristics (
  id SERIAL PRIMARY KEY,
  product_id INT,
  name VARCHAR(25)
)

COPY characteristics
FROM ''
DELIMITER ','
CSV HEADER;

CREATE TABLE reviewcharacteristics (
  id SERIAL PRIMARY KEY,
  characteristic_id INT,
  review_id INT,
  value INT,
)

COPY reviewcharacteristics
FROM ''
DELIMITER ','
CSV HEADER;

module.exports = randrDB;