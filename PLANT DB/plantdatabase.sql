--Script para MySQL
CREATE DATABASE PlantApp;

USE PlantApp;

CREATE TABLE PLANT (
    plant_id INT AUTOINCREMENT PRIMARY KEY,
    plant_name VARCHAR (255) NOT NULL,
    plant_family VARCHAR (255) NOT NULL,
    plant_irrigation_schedule VARCHAR (35)
);


CREATE TABLE PICTURE (
    picture_id INT AUTOINCREMENT PRIMARY KEY,
    FOREIGN KEY (picture_plant_id) REFERENCES PLANT(plant_id)
);

CREATE TABLE CALENDAR (
    calendar_insert_id INT AUTOINCREMENT PRIMARY KEY,
    calendar_insert_date DATE,
    calendar_insert_type VARCHAR (100),
    FOREIGN KEY (calendar_plant_id) REFERENCES PLANT(plant_id)
);

CREATE TABLE AUTHOR (
    author_id INT AUTOINCREMENT PRIMARY KEY,
    author_name VARCHAR (255) NOT NULL,

)

CREATE TABLE WIKI (
    wiki_entry_id INT AUTOINCREMENT PRIMARY KEY,
    wiki_entry_name VARCHAR (255) NOT NULL,
    FOREIGN KEY (wiki_author_name) REFERENCES AUTHOR(author_name)
);


--Script para SQLite
CREATE DATABASE PlantApp;

USE PlantApp;

CREATE TABLE PLANT (
    plant_id INT PRIMARY KEY AUTOINCREMENT,
    plant_name TEXT NOT NULL,
    plant_family TEXT NOT NULL,
    plant_irrigation_schedule TEXT
);


CREATE TABLE PICTURE (
    picture_id INT PRIMARY KEY AUTOINCREMENT,
    FOREIGN KEY (picture_plant_id) REFERENCES PLANT(plant_id)
);

CREATE TABLE CALENDAR (
    calendar_insert_id INT PRIMARY KEY AUTOINCREMENT,
    calendar_insert_date DATE,
    calendar_insert_type VARCHAR (100),
    FOREIGN KEY (calendar_plant_id) REFERENCES PLANT(plant_id)
);

CREATE TABLE AUTHOR (
    author_id INT PRIMARY KEY AUTOINCREMENT,
    author_name VARCHAR (255) NOT NULL,

)

CREATE TABLE WIKI (
    wiki_entry_id INT PRIMARY KEY AUTOINCREMENT ,
    wiki_entry_name VARCHAR (255) NOT NULL,
    FOREIGN KEY (wiki_author_id) REFERENCES AUTHOR(author_id)
);


