/*
CREATE TABLE invoice_guest(
invoice_id INT,
invoice DECIMAL(12),
PRIMARY KEY(invoice_id));
-------------------------------------
CREATE TABLE reservation_status(
status_id INT,
status VARCHAR(32),
PRIMARY KEY (status_id));
--------------------------------------
CREATE TABLE reservation(
reservation_id INT,
status_id INT,
PRIMARY KEY (reservation_id),
FOREIGN KEY (status_id)
	REFERENCES reservation_status (status_id));
--------------------------------------
CREATE TABLE guest (
guest_id INT,
guest_fname VARCHAR(12),
guest_lname VARCHAR(20),
reservation_id INT,
invoice_id INT,
PRIMARY KEY (guest_id),
FOREIGN KEY (reservation_id)
	REFERENCES reservation(reservation_id),
FOREIGN KEY (invoice_id)
	REFERENCES invoice_guest(invoice_id));
---------------------------------------
CREATE TABLE room_type(
type_id INT,
type VARCHAR (12),
invoice_id INT,
PRIMARY KEY (type_id),
FOREIGN KEY (invoice_id)
	REFERENCES invoice_guest (invoice_id));
----------------------------------------
CREATE TABLE room(
room_id INT,
capacity DECIMAL(5),
type_id INT,
guest_id INT,
PRIMARY KEY (room_id),
FOREIGN KEY (type_id)
	REFERENCES room_type (type_id),
FOREIGN KEY (guest_id)
	REFERENCES guest (guest_id));
----------------------------------------
CREATE TABLE hotel (
hotel_id INT,
hotel_quality VARCHAR(12),
capacity DECIMAL(32),
room_id INT,
PRIMARY KEY (hotel_id),
FOREIGN KEY (room_id)
	REFERENCES room (room_id));
----------------------------------------
CREATE TABLE company (
company_id INT,
hotel_id INT,
PRIMARY KEY (company_id),
FOREIGN KEY (hotel_id)
	REFERENCES hotel(hotel_id));
---------------------------------------
CREATE TABLE city (
city_id INT,
postal_code DECIMAL(12),
company_id INT,
PRIMARY KEY (city_id) ,
FOREIGN KEY (company_id)
	REFERENCES company (company_id));
---------------------------------------
CREATE TABLE country(
country_id INT,
city_id INT,
PRIMARY KEY (country_id),
FOREIGN KEY (city_id)
	REFERENCES city (city_id));
---------------------------------------	
*/
