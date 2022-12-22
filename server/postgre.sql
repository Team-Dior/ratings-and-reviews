DROP DATABASE IF EXISTS qaDB;

CREATE DATABASE qaDB;

USE qaDB;

CREATE TABLE review (
  reviewID INTEGER PRIMARY KEY,
  productID INTEGER,
  rating INTEGER,
  summary TEXT,
  recommended BOOLEAN,
  response TEXT,
  body TEXT,
  name TEXT,
  helpfulness INTEGER,
  photos JSON,
  reported BOOLEAN,
);

CREATE TABLE product (
  reviewID INTEGER PRIMARY KEY,
  productID INTEGER,
);

CREATE TABLE meta (
  productID INTEGER PRIMARY KEY,
  ratings JSON,
  recommended JSON,
  characteristics JSON,
);

module.exports = qaDB;