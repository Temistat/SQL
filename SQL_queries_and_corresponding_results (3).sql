/*a. Show all the future flights in the system.*/
SELECT * FROM Flight WHERE departure_date_and_time >= CURRENT_DATE();
/*
result:
airline_name flight_number departure_date_and_time departure_airport arrival_airport arrival_date_and_time base_price_of_ticket identification_number
Jet Blue     11111         2023-11-25 10:30:00     JFK               PVG             2023-11-26 12:30:00   380.00               JB789
Jet Blue     12345         2023-11-15 10:00:00     JFK               PVG             2023-11-16 12:00:00   350.00               JB123
Jet Blue     22222         2023-11-25 18:20:00     JFK               PVG             2023-11-26 20:20:00   410.00               JB457
Jet Blue     54321         2023-11-20 14:00:00     PVG               JFK             2023-11-21 16:00:00   400.00               JB456
*/
/*b. Show all of the delayed flights in the system.*/
SELECT * FROM Set_Flight WHERE status = 'delayed';
/*
result:
username airline_name departure_date_and_time flight_number status	
jbsmith  Jet Blue     2023-11-20 14:00:00     54321         delayed
jbsmith  Jet Blue     2023-11-25 18:20:00     22222         delayed
*/
/*c. Show the customer names who bought the tickets.*/
SELECT first_name, last_name FROM Customer WHERE email_address IN (select email_address FROM Purchase);
/*
result:
first_name last_name	
David      Lee
Jane       Smith
John       Doe
*/
/*d. Show all the airplanes owned by the airline Jet Blue.*/
SELECT * FROM Airplane WHERE name = 'Jet Blue';
/*
result:
name     identification_number number_of_seats manufacturing_company model_number manufacturing_date age	
Jet Blue JB123                 200             Boeing                737          2020-05-15         3
Jet Blue JB456                 180             Airbus                A320         2019-08-10         4
Jet Blue JB789                 250             Boeing                787          2021-01-20         2
*/