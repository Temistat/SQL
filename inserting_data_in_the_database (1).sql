/*a. One Airline name "Jet Blue".*/
INSERT INTO Airline (name) VALUES ('Jet Blue');
/*b. At least Two airports named "JFK" in NYC and "PVG" in Shanghai.*/
INSERT INTO Airport (code, name, city, country, number_of_terminals, airport_type) VALUES ('JFK', 'John F. Kennedy International Airport', 'New York', 'USA', 6, 'International'), ('PVG', 'Shanghai Pudong International Airport', 'Shanghai', 'China', 4, 'International');
/*c. Insert at least three customers with appropriate names and other attributes.*/
INSERT INTO Customer 
(email_address, password, first_name, last_name, building_number, street_name, apartment_number, city, state, zip_code, passport_number, passport_expiration, passport_country, date_of_birth) VALUES 
('john.doe@email.com', 'password123', 'John', 'Doe', '123', 'Main St', '23', 'New York', 'NY', '11021', 'ABC123456', '2025-05-01', 'USA', '1990-01-15'), 
('jane.smith@email.com', 'pass1234', 'Jane', 'Smith', '145', 'Stain St', '12', 'New York', 'NY', '11021', 'XYZ987654', '2024-09-01', 'USA', '1985-03-20'), 
('david.lee@email.com', 'letmein', 'David', 'Lee', '789', 'Oak St', '10', 'Brooklyn', 'NY', '11201', 'LMN123456', '2026-02-01', 'USA', '1995-07-10');
INSERT INTO Customer_Phone (email_address, phone_number) VALUES ('john.doe@email.com', '1234567890'), ('jane.smith@email.com', '9876543210'), ('david.lee@email.com', '5551234567');
/*d. Insert at least three airplanes.*/
INSERT INTO Airplane (name, identification_number, number_of_seats, manufacturing_company, model_number, manufacturing_date, age) VALUES ('Jet Blue', 'JB123', 200, 'Boeing', '737', '2020-05-15', 3), ('Jet Blue', 'JB456', 180, 'Airbus', 'A320', '2019-08-10', 4), ('Jet Blue', 'JB789', 250, 'Boeing', '787', '2021-01-20', 2);
/*e. Insert At least One airline Staff working for Jet Blue*/
INSERT INTO Airline_Staff(username, first_name, last_name, date_of_birth) VALUES ('jbsmith', 'John', 'Smith', '1980-04-25');
INSERT INTO Staff_Email(username, email_address) VALUES('jbsmith', 'john.smith@jetblue.com');
INSERT INTO Staff_phone(username, phone_number) VALUES('jbsmith', '9876543210');
/*f. Insert several flights with on-time, and delayed statuses.*/
INSERT INTO Flight (airline_name, flight_number, departure_airport, departure_date_and_time, identification_number, arrival_airport, arrival_date_and_time, base_price_of_ticket) VALUES
('Jet Blue', '12345', 'JFK', '2023-11-15 10:00:00', 'JB123', 'PVG', '2023-11-16 12:00:00', 350.00),
('Jet Blue', '54321', 'PVG', '2023-11-20 14:00:00', 'JB456', 'JFK', '2023-11-21 16:00:00', 400.00),
('Jet Blue', '11111', 'JFK', '2023-11-25 10:30:00', 'JB789', 'PVG', '2023-11-26 12:30:00', 380.00),
('Jet Blue', '22222', 'JFK', '2023-11-25 18:20:00', 'JB457', 'PVG', '2023-11-26 20:20:00', 410.00);
INSERT INTO Set_Flight(username, airline_name, departure_date_and_time, flight_number,status) VALUES
('jbsmith', 'Jet Blue', '2023-11-15 10:00:00', '12345','on time'),
('jbsmith', 'Jet Blue', '2023-11-20 14:00:00', '54321', 'delayed'),
('jbsmith', 'Jet Blue', '2023-11-25 10:30:00', '11111', 'on time'),
('jbsmith', 'Jet Blue', '2023-11-25 18:20:00', '22222', 'delayed');
/*g. Insert some tickets for corresponding flights and insert some purchase records (customers bought some tickets).*/
INSERT INTO Ticket(ID, email_address, first_name, last_name, date_of_birth, airline_name, flight_number, departure_date_and_time) VALUES
('1', 'too2007@email.edu', 'Temi', 'Nifemi', '2004-06-06', 'Jet Blue', '11111', '2023-11-25 10:30:00'),
('2', 'nancy@gmail.com', 'Nancy', 'kate', '2005-05-05', 'Jet Blue', '12345', '2023-11-15 10:00:00'),
('34567', 'drew@email.com', 'drew', 'heart', '2003-03-03', 'Jet Blue', '22222', '2023-11-25 18:20:00');
INSERT INTO Purchase( ID, email_address, ticket_price, card_type, name_on_card, expiration_date, purchase_date_and_time) VALUES
('1', 'david.lee@email.com', 5000.00, 'Credit', 'John Doe', '2003-03-25', '2023-11-10 15:45:00'),
('2', 'jane.smith@email.com',5000.00, 'Debit', 'Lam Doe', '2004-03-25', '2023-11-10 15:45:00'),
('34567', 'john.doe@email.com', 5000.00, 'Credit', 'Temi Doe', '2005-03-25', '2023-11-10 15:45:00');