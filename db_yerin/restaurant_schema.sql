CREATE DATABASE info;

DROP SCHEMA IF EXISTS restaurantInfo;

CREATE SCHEMA restaurantInfo;

\c restaurantInfo;

CREATE TABLE restaurantInfo.restaurants (
  id  serial primary key unique,
  name varchar(40) NOT NULL,
  address varchar(100) NOT NULL,
  coords varchar(100) NOT NULL,
  phone  varchar(40) NOT NULL,
  website  varchar(40) NOT NULL,
);

CREATE TABLE restaurantInfo.hours (
  id serial primary key unique,
  Monday_open integer NOT NULL,
  Monday_close integer NOT NULL,
  Tuesday_open integer NOT NULL,
  Tuesday_close integer NOT NULL,
  Wednesday_open integer NOT NULL,
  Wednesday_close integer NOT NULL,
  Thursday_open integer NOT NULL,
  Thursday_close integer NOT NULL,
  Friday_open integer NOT NULL,
  Friday_close integer NOT NULL,
  Saturday_open integer NOT NULL,
  Saturday_close integer NOT NULL,
  Sunday_open integer NOT NULL,
  Sunday_close integer NOT NULL,
  restaurant_id integer NOT NULL,
  foreign key (restaurant_id) references restaurants(id)
);