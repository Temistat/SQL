create table Airport
	(
		code				char(5),
		name				varchar(50),
		city				varchar(10),
		country				varchar(10),
		number_of_terminals	numeric(1,0),
		airport_type		varchar(15),
		primary key (code)
	);

create table Airline
	(
		name	varchar(10),
		primary key (name)
	);	

create table Locate
	(
		name	varchar(3),
		code	char(5),
		primary key (name, code),
		foreign key (code) references Airport(code),
		foreign key (name) references Airline(name)
	);

create table Airplane
	(
		name					varchar(15),
		identification_number	char(5),
		number_of_seats			numeric(3, 0),
		manufacturing_company	varchar(10),
		model_number			varchar(5),
		manufacturing_date		date,
		age						numeric(3, 0),
		primary key (name, identification_number),
		foreign key (name) references Airline(name)
	);

create table Maintenance_Procedure
	(
	name					varchar(15),
	identification_number	char(5),
	start_date_and_time		timestamp,
	end_date_and_time		timestamp,
	primary key (name, identification_number, start_date_and_time, end_date_and_time),
	foreign key (name, identification_number) references Airplane(name, identification_number)
	);

create table Airline_Staff
	(
		username		varchar(20),
		password		varchar(20),
		first_name		varchar(20),
		last_name		varchar(20),
		date_of_birth	date,
		primary key (username)
	);

create table Staff_Phone
	(
		username		varchar(20),
		phone_number	numeric(10, 0),
		primary key (username, phone_number),
		foreign key (username) references Airline_Staff(username)
	);

create table Staff_Email
	(
		username		varchar(20),
		email_address	varchar(30),
		primary key (username, email_address),
		foreign key (username) references Airline_Staff(username)
	);

create table Work
	(
		username 		varchar(20),
		airline_name	varchar(10),
		primary key (username, airline_name),
		foreign key (username) references Airline_Staff(username),
		foreign key (airline_name) references Airline(name)
	);

create table Flight
	(
		airline_name			varchar(10),
		flight_number			varchar(6),
		departure_date_and_time	timestamp,
		identification_number	char(5),
		departure_airport		varchar(3),
		arrival_airport			varchar(3),
		arrival_date_and_time	timestamp,
		base_price_of_ticket	numeric(6, 2),
		primary key (airline_name, flight_number, departure_date_and_time),
		foreign key (airline_name) references Airline(name)
	);

create table Set_Flight
	(
		username 				varchar(20),
		airline_name			varchar(10),
		departure_date_and_time	timestamp,
		flight_number			varchar(6),
		status					varchar(8) CHECK (status in ('delayed', 'on time', 'canceled')),
		primary key (username, airline_name, departure_date_and_time, flight_number),
		foreign key (username) references Airline_Staff(username),
		foreign key (airline_name, flight_number, departure_date_and_time) references Flight(airline_name, flight_number, departure_date_and_time)
	);

create table Ticket
	(
		ID						char(5),
		airline_name			varchar(10),
		flight_number			varchar(6),
		departure_date_and_time	timestamp,
		email_address			varchar(30),
		first_name				varchar(20),
		last_name				varchar(20),
		date_of_birth			date,
		primary key (ID, airline_name, flight_number, departure_date_and_time),
		foreign key (airline_name, flight_number, departure_date_and_time) references Flight(airline_name, flight_number, departure_date_and_time)
	);

create table Customer
	(
		email_address 		varchar(30),
		password			varchar(20),
		first_name			varchar(20),
		last_name			varchar(20),
		building_number		char(5),
		street_name			varchar(10),
		apartment_number	varchar(2),
		city				varchar(10),
		state				varchar(2),
		zip_code			char(5),
		passport_number		varchar(10),
		passport_expiration	date,
		passport_country	varchar(3),
		date_of_birth		date,
		primary key (email_address)
	);

create table Customer_Phone
	(
		email_address 	varchar(30),
		phone_number	numeric(10, 0),
		primary key (email_address, phone_number),
		foreign key (email_address) references Customer(email_address)
	);

create table Purchase
	(
		ID						char(5),
		email_address 			varchar(30),
		ticket_price			numeric(6, 2),
		card_type				varchar(6),
		name_on_card			varchar(20),
		expiration_date			date,
		purchase_date_and_time	timestamp,
		primary key (ID, email_address),
		foreign key (ID) references Ticket(ID),
		foreign key (email_address) references Customer(email_address)
	);


create table Rate
	(
		airline_name			varchar(10),
		flight_number			varchar(6),
		departure_date_and_time	timestamp,
		email_address 			varchar(30),
		rate					numeric(5, 0),
		comment					varchar(200),
		primary key (airline_name, flight_number, departure_date_and_time, email_address),
		foreign key (airline_name, flight_number, departure_date_and_time) references Flight(airline_name, flight_number, departure_date_and_time),
		foreign key (email_address) references Customer(email_address)
	);

