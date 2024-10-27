DROP DATABASE IF EXISTS pet_database;
CREATE DATABASE pet_database;
USE pet_database;

DROP TABLE IF EXISTS petPet, petEvent;
CREATE TABLE petPet (
    petname VARCHAR(20) PRIMARY KEY,
    owner VARCHAR(45),
    species ENUM('M', 'F'),
    gender VARCHAR(15),
    birth DATE,
    death DATE
);

CREATE TABLE petEvent (
    event_id INT AUTO_INCREMENT PRIMARY KEY, -- Auto-incrementing primary key
    petname VARCHAR(20),
    eventdate DATE,
    eventtype VARCHAR(20),
    remark VARCHAR(255),
    FOREIGN KEY (petname) REFERENCES petPet(petname)
    );