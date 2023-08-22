USE hbnb_dev_db;
DELETE FROM places;
DELETE FROM users;
DELETE FROM cities;
DELETE FROM states;
DELETE FROM amenities;
INSERT INTO `amenities` (id, created_at, updated_at, name) VALUES
('821a55f4-7d82-47d9-b54c-a76916479551','2017-03-25 19:44:42','2017-03-25 19:44:42','Wifi'),
('821a55f4-7d82-47d9-b54c-a76916479552','2017-03-25 19:44:42','2017-03-25 19:44:42','Pets friendly'),
('821a55f4-7d82-47d9-b54c-a76916479553','2017-03-25 19:44:42','2017-03-25 19:44:42','Elevator in building'),
('821a55f4-7d82-47d9-b54c-a76916479554','2017-03-25 19:44:42','2017-03-25 19:44:42','Doorman'),
('821a55f4-7d82-47d9-b54c-a76916479555','2017-03-25 19:44:42','2017-03-25 19:44:42','Cable TV'),
('821a55f4-7d82-47d9-b54c-a76916479556','2017-03-25 19:44:42','2017-03-25 19:44:42','Dryer'),
('821a55f4-7d82-47d9-b54c-a76916479557','2017-03-25 19:44:42','2017-03-25 19:44:42','Hair dryer'),
('821a55f4-7d82-47d9-b54c-a76916479558','2017-03-25 19:44:42','2017-03-25 19:44:42','Iron'),
('821a55f4-7d82-47d9-b54c-a76916479559','2017-03-25 19:44:42','2017-03-25 19:44:42','Washer'),
('821a55f4-7d82-47d9-b54c-a76916479560','2017-03-25 19:44:42','2017-03-25 19:44:42','Laundry room'),
('821a55f4-7d82-47d9-b54c-a76916479561','2017-03-25 19:44:42','2017-03-25 19:44:42','Air conditioning'),
('821a55f4-7d82-47d9-b54c-a76916479562','2017-03-25 19:44:42','2017-03-25 19:44:42','Hot tub'),
('821a55f4-7d82-47d9-b54c-a76916479563','2017-03-25 19:44:42','2017-03-25 19:44:42','Smoking allowed');
INSERT INTO `states` (id, created_at, updated_at, name) VALUES
('421a55f4-7d82-47d9-b54c-a76916479545','2017-03-25 19:44:42','2017-03-25 19:44:42','Alabama'),
('421a55f4-7d82-47d9-b54c-a76916479546','2017-03-25 19:44:42','2017-03-25 19:44:42','Arizona'),
('421a55f4-7d82-47d9-b54c-a76916479547','2017-03-25 19:44:42','2017-03-25 19:44:42','California'),
('421a55f4-7d82-47d9-b54c-a76916479548','2017-03-25 19:44:42','2017-03-25 19:44:42','Colorado'),
('421a55f4-7d82-47d9-b54c-a76916479549','2017-03-25 19:44:42','2017-03-25 19:44:42','Florida'),
('421a55f4-7d82-47d9-b54c-a76916479550','2017-03-25 19:44:42','2017-03-25 19:44:42','Georgia'),
('421a55f4-7d82-47d9-b54c-a76916479551','2017-03-25 19:44:42','2017-03-25 19:44:42','Hawaii'),
('421a55f4-7d82-47d9-b54c-a76916479552','2017-03-25 19:44:42','2017-03-25 19:44:42','Illinois'),
('421a55f4-7d82-47d9-b54c-a76916479553','2017-03-25 19:44:42','2017-03-25 19:44:42','Indiana'),
('421a55f4-7d82-47d9-b54c-a76916479554','2017-03-25 19:44:42','2017-03-25 19:44:42','Louisiana'),
('421a55f4-7d82-47d9-b54c-a76916479555','2017-03-25 19:44:42','2017-03-25 19:44:42','Minnesota'),
('421a55f4-7d82-47d9-b54c-a76916479556','2017-03-25 19:44:42','2017-03-25 19:44:42','Mississippi'),
('421a55f4-7d82-47d9-b54c-a76916479557','2017-03-25 19:44:42','2017-03-25 19:44:42','Oregon');
INSERT INTO `cities` (id, created_at, updated_at, name, state_id) VALUES
('521a55f4-7d82-47d9-b54c-a76916479545','2017-03-25 19:44:42','2017-03-25 19:44:42','Akron','421a55f4-7d82-47d9-b54c-a76916479545'),
('521a55f4-7d82-47d9-b54c-a76916479546','2017-03-25 19:44:42','2017-03-25 19:44:42','Douglas','421a55f4-7d82-47d9-b54c-a76916479546'),
('521a55f4-7d82-47d9-b54c-a76916479547','2017-03-25 19:44:42','2017-03-25 19:44:42','San Francisco','421a55f4-7d82-47d9-b54c-a76916479547'),
('521a55f4-7d82-47d9-b54c-a76916479548','2017-03-25 19:44:42','2017-03-25 19:44:42','Denver','421a55f4-7d82-47d9-b54c-a76916479548'),
('521a55f4-7d82-47d9-b54c-a76916479549','2017-03-25 19:44:42','2017-03-25 19:44:42','Miami','421a55f4-7d82-47d9-b54c-a76916479549'),
('521a55f4-7d82-47d9-b54c-a76916479551','2017-03-25 19:44:42','2017-03-25 19:44:42','Honolulu','421a55f4-7d82-47d9-b54c-a76916479551'),
('521a55f4-7d82-47d9-b54c-a76916479552','2017-03-25 19:44:42','2017-03-25 19:44:42','Chicago','421a55f4-7d82-47d9-b54c-a76916479552'),
('521a55f4-7d82-47d9-b54c-a76916479554','2017-03-25 19:44:42','2017-03-25 19:44:42','New Orleans','421a55f4-7d82-47d9-b54c-a76916479554'),
('521a55f4-7d82-47d9-b54c-a76916479555','2017-03-25 19:44:42','2017-03-25 19:44:42','Saint Paul','421a55f4-7d82-47d9-b54c-a76916479555'),
('521a55f4-7d82-47d9-b54c-a76916479556','2017-03-25 19:44:42','2017-03-25 19:44:42','Jackson','421a55f4-7d82-47d9-b54c-a76916479556'),
('521a55f4-7d82-47d9-b54c-a76916479557','2017-03-25 19:44:42','2017-03-25 19:44:42','Portland','421a55f4-7d82-47d9-b54c-a76916479557'),
('531a55f4-7d82-47d9-b54c-a76916479545','2017-03-25 19:44:42','2017-03-25 19:44:42','Babbie','421a55f4-7d82-47d9-b54c-a76916479545'),
('531a55f4-7d82-47d9-b54c-a76916479546','2017-03-25 19:44:42','2017-03-25 19:44:42','Kearny','421a55f4-7d82-47d9-b54c-a76916479546'),
('531a55f4-7d82-47d9-b54c-a76916479547','2017-03-25 19:44:42','2017-03-25 19:44:42','San Jose','421a55f4-7d82-47d9-b54c-a76916479547'),
('531a55f4-7d82-47d9-b54c-a76916479549','2017-03-25 19:44:42','2017-03-25 19:44:42','Orlando','421a55f4-7d82-47d9-b54c-a76916479549'),
('531a55f4-7d82-47d9-b54c-a76916479551','2017-03-25 19:44:42','2017-03-25 19:44:42','Kailua','421a55f4-7d82-47d9-b54c-a76916479551'),
('531a55f4-7d82-47d9-b54c-a76916479552','2017-03-25 19:44:42','2017-03-25 19:44:42','Peoria','421a55f4-7d82-47d9-b54c-a76916479552'),
('531a55f4-7d82-47d9-b54c-a76916479554','2017-03-25 19:44:42','2017-03-25 19:44:42','Baton rouge','421a55f4-7d82-47d9-b54c-a76916479554'),
('531a55f4-7d82-47d9-b54c-a76916479556','2017-03-25 19:44:42','2017-03-25 19:44:42','Tupelo','421a55f4-7d82-47d9-b54c-a76916479556'),
('531a55f4-7d82-47d9-b54c-a76916479557','2017-03-25 19:44:42','2017-03-25 19:44:42','Eugene','421a55f4-7d82-47d9-b54c-a76916479557'),
('541a55f4-7d82-47d9-b54c-a76916479545','2017-03-25 19:44:42','2017-03-25 19:44:42','Calera','421a55f4-7d82-47d9-b54c-a76916479545'),
('541a55f4-7d82-47d9-b54c-a76916479546','2017-03-25 19:44:42','2017-03-25 19:44:42','Tempe','421a55f4-7d82-47d9-b54c-a76916479546'),
('541a55f4-7d82-47d9-b54c-a76916479547','2017-03-25 19:44:42','2017-03-25 19:44:42','Fremont','421a55f4-7d82-47d9-b54c-a76916479547'),
('541a55f4-7d82-47d9-b54c-a76916479551','2017-03-25 19:44:42','2017-03-25 19:44:42','Pearl city','421a55f4-7d82-47d9-b54c-a76916479551'),
('541a55f4-7d82-47d9-b54c-a76916479552','2017-03-25 19:44:42','2017-03-25 19:44:42','Naperville','421a55f4-7d82-47d9-b54c-a76916479552'),
('541a55f4-7d82-47d9-b54c-a76916479554','2017-03-25 19:44:42','2017-03-25 19:44:42','Lafayette','421a55f4-7d82-47d9-b54c-a76916479554'),
('541a55f4-7d82-47d9-b54c-a76916479556','2017-03-25 19:44:42','2017-03-25 19:44:42','Meridian','421a55f4-7d82-47d9-b54c-a76916479556'),
('551a55f4-7d82-47d9-b54c-a76916479545','2017-03-25 19:44:42','2017-03-25 19:44:42','Fairfield','421a55f4-7d82-47d9-b54c-a76916479545'),
('551a55f4-7d82-47d9-b54c-a76916479547','2017-03-25 19:44:42','2017-03-25 19:44:42','Napa','421a55f4-7d82-47d9-b54c-a76916479547'),
('551a55f4-7d82-47d9-b54c-a76916479552','2017-03-25 19:44:42','2017-03-25 19:44:42','Urbana','421a55f4-7d82-47d9-b54c-a76916479552'),
('561a55f4-7d82-47d9-b54c-a76916479547','2017-03-25 19:44:42','2017-03-25 19:44:42','Sonoma','421a55f4-7d82-47d9-b54c-a76916479547'),
('561a55f4-7d82-47d9-b54c-a76916479552','2017-03-25 19:44:42','2017-03-25 19:44:42','Joliet','421a55f4-7d82-47d9-b54c-a76916479552');
INSERT INTO `users` (id, created_at, updated_at, email, password, first_name, last_name) VALUES
('00a11245-12fa-436e-9ccc-967417f8c30a', '2017-03-25 19:44:42', '2017-03-25 19:44:42', 'john_lennon@gmail.com', 'john123', 'John', 'Lennon'),
('00e93fc3-53ff-4da4-8e72-faa5216f81bb', '2017-03-25 19:44:42', '2017-03-25 19:44:42', 'adrienne@gmail.com', 'adri123', 'Adrienne', 'Anderson'),
('150e591e-486b-48ee-be42-4aecba665020', '2017-03-25 19:44:42', '2017-03-25 19:44:42', '6334@holbertonstaff.com', 'betty_super_star', 'Betty', 'Holberton');
INSERT INTO `places` (id, created_at, updated_at, city_id, user_id, name, description, number_rooms, number_bathrooms, max_guest, price_by_night) VALUES
('fa44780d-ac48-41ab-9dd0-ac54a15755cf', '2017-03-25 19:44:42', '2017-03-25 19:44:42', '521a55f4-7d82-47d9-b54c-a76916479547', '00a11245-12fa-436e-9ccc-967417f8c30a', 'My home', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', '1', '1', '2', '80'),
('f9b11370-f316-492c-92da-014d7bce7213', '2017-03-25 19:44:42', '2017-03-25 19:44:42', '521a55f4-7d82-47d9-b54c-a76916479547', '00e93fc3-53ff-4da4-8e72-faa5216f81bb', 'Tiny house', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2', '1', '4', '65'),
('f33e2624-520b-4bc2-b6a0-190ee1d41855', '2017-03-25 19:44:42', '2017-03-25 19:44:42', '521a55f4-7d82-47d9-b54c-a76916479547', '150e591e-486b-48ee-be42-4aecba665020', 'A suite', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '4', '3', '5', '180');