/* 2024-11-04 14:49:36 [6 ms] */ 
SELECT NOW();
/* 2024-11-04 14:52:35 [30 ms] */ 
CREATE DATABASE wild_db_quest;
/* 2024-11-04 14:53:13 [4 ms] */ 
USE wild_db_quest;
/* 2024-11-04 15:01:14 [10 ms] */ 
SHOW TABLES;
/* 2024-11-04 15:02:06 [52 ms] */ 
CREATE TABLE wizard (
  id INT NOT NULL AUTO_INCREMENT,
  firstname VARCHAR(100) NOT NULL,
  lastname VARCHAR(100) NOT NULL,
  birthday DATE DEFAULT NULL,
  birth_place VARCHAR(255) DEFAULT NULL,
  biography TEXT DEFAULT NULL,
  PRIMARY KEY (id)
);
/* 2024-11-04 15:02:12 [4 ms] */ 
USE wild_db_quest;
/* 2024-11-04 15:02:20 [10 ms] */ 
ALTER TABLE wizard;
/* 2024-11-04 15:06:50 [43 ms] */ 
ALTER TABLE wizard
ADD is_muggle BOOL;
/* 2024-11-04 15:07:13 [17 ms] */ 
ALTER TABLE wizard;
/* 2024-11-04 15:09:03 [84 ms] */ 
ALTER TABLE wizard
MODIFY is_muggle BOOL NOT NULL;
/* 2024-11-04 15:09:36 [52 ms] */ 
CREATE TABLE school (
    id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name VARCHAR(100) NOT NULL,
    capacity INTEGER NULL,
    country VARCHAR(255) NOT NULL
);
/* 2024-11-04 15:10:01 [6 ms] */ 
SHOW TABLES;
/* 2024-11-04 15:12:11 [20 ms] */ 
DESCRIBE wizard;
/* 2024-11-04 15:12:28 [6 ms] */ 
DESCRIBE school;
/* 2024-11-04 15:12:38 [6 ms] */ 
DESCRIBE wizard;
/* 2024-11-04 15:12:56 [4 ms] */ 
SHOW TABLES;
/* 2024-11-04 15:13:36 [7 ms] */ 
DESCRIBE wizard;
/* 2024-11-04 15:13:54 [9 ms] */ 
DESCRIBE school;
/* 2024-11-04 16:25:57 [28 ms] */ 
INSERT INTO wild_db_quest.wizard
  (firstname, lastname, birthday, birth_place, biography, is_muggle)
  VALUES
  ('harry', 'potter', '1980-07-31', 'london', '', '0'),
  ('hermione', 'granger', '1979-09-19', '', 'Friend of Harry Potter', '0'),
  ('lily', 'potter', '1960-01-30', '', 'mother of Harry Potter', '0'),
  ('ron', 'weasley', '1980-03-01', '', 'Best friend of Harry', '0'),
  ('ginny', 'weasley', '1981-08-11', '', 'Sister of Ron and girlfriend of Harry', '0'),
  ('fred', 'weasley', '1978-04-01', '', '', '0'),
  ('george', 'weasley', '1978-04-01', '', '', '0'),
  ('arthur', 'weasley', '1950-02-06', '', '', '0'),
  ('molly', 'weasley', ' 1949-01-01', '', '', '0'),
  ('drago', 'malefoy', '1980-06-05', '', '', '0'),
  ('albus', 'dumbledore', '1881-07-01', '', '', '0'),
  ('severus', 'rogue', '1960-01-09', '', '', '0'),
  ('tom', 'jédusor', '1926-12-31', '', 'Celui-Dont-On-Ne-Doit-Pas-Prononcer-Le-Nom alias Voldermort', '0'),
  ('dudley', 'dursley', '1980-06-23', '', 'Cousin d\'Harry', '1');
/* 2024-11-04 16:29:07 [3 ms] */ 
SELECT * FROM wizard LIMIT 100;
/* 2024-11-04 16:32:10 [3 ms] */ 
SELECT firstname, lastname FROM wizard LIMIT 100;
/* 2024-11-04 16:36:53 [3 ms] */ 
SELECT lastname AS student_name FROM wizard LIMIT 100;
/* 2024-11-04 16:44:18 [2 ms] */ 
USE wild_db_quest;
/* 2024-11-04 16:44:22 [23 ms] */ 
SELECT lastname AS student_name FROM wizard LIMIT 100;
/* 2024-11-04 16:51:44 [16 ms] */ 
SELECT firstname, birthday 
FROM wizard 
WHERE 
lastname LIKE 'Weas%' AND
birthday BETWEEN '1970-01-01' AND '2000-01-01' LIMIT 100;
/* 2024-11-04 16:54:26 [3 ms] */ 
SELECT firstname, birthday 
FROM `wizard` 
WHERE 
lastname LIKE 'Weas%' AND
birthday BETWEEN '1970-01-01' AND '2000-01-01' LIMIT 100;
/* 2024-11-04 16:54:36 [3 ms] */ 
SELECT firstname, birthday 
FROM wizard
WHERE 
lastname LIKE 'Weas%' AND
birthday BETWEEN '1970-01-01' AND '2000-01-01' LIMIT 100;
/* 2024-11-04 17:06:18 [6 ms] */ 
SELECT firstname, birthday 
FROM wizard
WHERE 
lastname LIKE 'Weas%' AND
birthday BETWEEN '1970-01-01' AND '2000-01-01'
LIMIT 2;
/* 2024-11-04 17:12:06 [5 ms] */ 
SELECT firstname, lastname FROM wizard ORDER BY lastname ASC, birthday DESC LIMIT 100;
/* 2024-11-04 17:12:30 [5 ms] */ 
SELECT firstname, birthday 
FROM wizard
WHERE 
lastname LIKE 'Weas%' AND
birthday BETWEEN '1970-01-01' AND '2000-01-01'
LIMIT 2;
/* 2024-11-04 17:12:32 [4 ms] */ 
SELECT firstname, lastname FROM wizard ORDER BY lastname ASC, birthday DESC LIMIT 100;
/* 2024-11-04 17:14:27 [5 ms] */ 
SELECT * FROM wizard WHERE lastname='Weasley' ORDER BY birthday DESC LIMIT 0,3;
/* 2024-11-04 17:14:39 [4 ms] */ 
SELECT * FROM wizard WHERE lastname='Weasley' ORDER BY birthday DESC LIMIT 0 OFFSET 3;
/* 2024-11-04 17:15:03 [5 ms] */ 
SELECT * FROM wizard WHERE lastname='Weasley' ORDER BY birthday DESC LIMIT 1 OFFSET 3;
/* 2024-11-04 17:15:46 [7 ms] */ 
SELECT * FROM wizard WHERE lastname='Weasley' ORDER BY birthday DESC LIMIT 0,3;
/* 2024-11-04 17:15:53 [7 ms] */ 
SELECT * FROM wizard WHERE lastname='Weasley' ORDER BY birthday DESC LIMIT 3;
/* 2024-11-04 17:23:28 [7 ms] */ 
SELECT * FROM wizard WHERE lastname='Weasley' ORDER BY birthday DESC LIMIT 0,3;
/* 2024-11-04 17:23:37 [4 ms] */ 
SELECT * FROM wizard WHERE lastname='Weasley' ORDER BY birthday DESC LIMIT 3;
/* 2024-11-05 10:11:36 [5 ms] */ 
SELECT * FROM wizard WHERE lastname='Weasley' ORDER BY birthday DESC LIMIT 3;
/* 2024-11-05 11:08:01 [3 ms] */ 
SELECT * FROM wizard WHERE birthday BETWEEN '1975-01-01' AND '1985-12-31' LIMIT 100;
/* 2024-11-05 11:09:49 [2 ms] */ 
SELECT * FROM wizard WHERE birthday BETWEEN '1975-01-01' AND '1985-12-31'  LIMIT 100;
/* 2024-11-05 11:09:56 [3 ms] */ 
SELECT * FROM wizard WHERE birthday BETWEEN '1975-01-01' AND '1985-12-31' LIMIT 100;
/* 2024-11-05 11:14:55 [4 ms] */ 
SELECT firstname FROM wizard WHERE firstname LIKE 'H%' LIMIT 100;
/* 2024-11-05 11:18:01 [5 ms] */ 
SELECT firstname, lastname FROM wizard WHERE lastname='potter' ORDER BY firstname LIMIT 100;
/* 2024-11-05 11:27:17 [5 ms] */ 
SELECT firstname, lastname, birthday FROM wizard ORDER BY birthday ASC LIMIT 1;
/* 2024-11-05 11:27:52 [3 ms] */ 
SELECT firstname, lastname, birthday FROM wizard ORDER BY birthday ASC LIMIT 1 OFFSET 2;
/* 2024-11-05 11:28:17 [3 ms] */ 
SELECT firstname, lastname, birthday FROM wizard ORDER BY birthday ASC LIMIT 1 OFFSET 1;
/* 2024-11-05 11:28:21 [4 ms] */ 
SELECT firstname, lastname, birthday FROM wizard ORDER BY birthday ASC LIMIT 1 OFFSET 0;
/* 2024-11-05 11:28:31 [4 ms] */ 
SELECT firstname, lastname, birthday FROM wizard ORDER BY birthday ASC LIMIT 1;
/* 2024-11-05 11:46:54 [3 ms] */ 
SELECT firstname, lastname FROM wizard WHERE lastname='potter' ORDER BY firstname LIMIT 100;
/* 2024-11-05 11:46:55 [3 ms] */ 
SELECT firstname FROM wizard WHERE firstname LIKE 'H%' LIMIT 100;
/* 2024-11-05 11:46:56 [3 ms] */ 
SELECT * FROM wizard WHERE birthday BETWEEN '1975-01-01' AND '1985-12-31' LIMIT 100;
/* 2024-11-05 11:46:57 [2 ms] */ 
SELECT * FROM wizard WHERE lastname='Weasley' ORDER BY birthday DESC LIMIT 3;
/* 2024-11-05 11:57:34 [5 ms] */ 
SHOW TABLES;
/* 2024-11-05 11:57:36 [6 ms] */ 
DESCRIBE wizard;
/* 2024-11-05 11:57:39 [4 ms] */ 
DESCRIBE school;
/* 2024-11-05 11:57:41 [5 ms] */ 
DESCRIBE wizard;
/* 2024-11-05 11:57:43 [4 ms] */ 
SHOW TABLES;
/* 2024-11-05 11:57:47 [3 ms] */ 
DESCRIBE wizard;
/* 2024-11-05 11:57:48 [4 ms] */ 
DESCRIBE school;
/* 2024-11-05 11:57:49 [3 ms] */ 
DESCRIBE wizard;
/* 2024-11-05 11:57:49 [3 ms] */ 
SHOW TABLES;
/* 2024-11-05 11:57:51 [3 ms] */ 
DESCRIBE wizard;
/* 2024-11-05 11:57:54 [4 ms] */ 
DESCRIBE school;
/* 2024-11-05 11:59:47 [3 ms] */ 
DESCRIBE wizard;
/* 2024-11-05 11:59:49 [4 ms] */ 
DESCRIBE school;
/* 2024-11-05 11:59:51 [5 ms] */ 
DESCRIBE wizard;
/* 2024-11-05 12:00:00 [3 ms] */ 
DESCRIBE school;
/* 2024-11-05 12:00:00 [3 ms] */ 
DESCRIBE wizard;
/* 2024-11-05 12:01:03 [4 ms] */ 
SHOW TABLES;
/* 2024-11-05 12:01:04 [6 ms] */ 
DESCRIBE wizard;
/* 2024-11-05 12:01:05 [3 ms] */ 
SHOW TABLES;
/* 2024-11-05 12:01:15 [4 ms] */ 
DESCRIBE wizard;
/* 2024-11-05 12:01:19 [3 ms] */ 
DESCRIBE school;
/* 2024-11-05 12:01:22 [6 ms] */ 
DESCRIBE wizard;
/* 2024-11-05 14:14:17 [6 ms] */ 
SELECT * FROM wizard WHERE birthday BETWEEN '1975-01-01' AND '1985-12-31' AND is_muggle=0 LIMIT 100;
/* 2024-11-05 14:14:24 [4 ms] */ 
SELECT * FROM wizard WHERE birthday BETWEEN '1975-01-01' AND '1985-12-31' AND is_muggle=1 LIMIT 100;
/* 2024-11-05 14:14:38 [3 ms] */ 
SELECT * FROM wizard WHERE birthday BETWEEN '1975-01-01' AND '1985-12-31' AND is_muggle=0 LIMIT 100;
/* 2024-11-05 14:15:05 [4 ms] */ 
SELECT firstname, lastname, birthday FROM wizard WHERE is_muggle=0 ORDER BY birthday ASC LIMIT 1;
/* 2024-11-05 14:15:25 [15 ms] */ 
SELECT * FROM wizard WHERE birthday BETWEEN '1975-01-01' AND '1985-12-31' AND is_muggle=0 LIMIT 100;
/* 2024-11-05 14:17:18 [6 ms] */ 
SELECT firstname, lastname, birthday FROM wizard WHERE is_muggle=0 ORDER BY birthday ASC LIMIT 1;
/* 2024-11-05 14:17:39 [4 ms] */ 
SELECT firstname FROM wizard WHERE firstname LIKE 'H%' LIMIT 100;
/* 2024-11-05 14:17:41 [3 ms] */ 
SELECT * FROM wizard WHERE birthday BETWEEN '1975-01-01' AND '1985-12-31' AND is_muggle=0 LIMIT 100;
/* 2024-11-05 14:18:31 [4 ms] */ 
SELECT firstname, lastname, birthday FROM wizard WHERE is_muggle=0 ORDER BY birthday ASC LIMIT 1;
/* 2024-11-05 14:44:26 [9 ms] */ 
DESCRIBE school;
/* 2024-11-05 15:03:47 [19 ms] */ 
INSERT INTO school
(name, country, capacity)
VALUES
  ('Beauxbatons Academy of Magic', 'France', 550), 
  ('Castelobruxo', 'Brazil', 380), 
  ('Durmstrang Institute', 'Norway', 570),
  ('Hogwarts School of Witchcraft and Wizardry', 'United Kingdom', 450),
  ('0Ilvermorny School of Witchcraft and Wizardry','USA','300'),
  ('Koldovstoretz','Russia','125'),
  ('Mahoutokoro School of Magic','Japan','800'),
  ('Uagadou School of Magic','Uganda','350');
/* 2024-11-05 15:04:49 [5 ms] */ 
SELECT * FROM school LIMIT 100;
/* 2024-11-05 15:10:23 [6 ms] */ 
UPDATE school
SET country = 'Sweden'
WHERE name = 'Durmstrang Institute';
/* 2024-11-05 15:10:38 [3 ms] */ 
SELECT * FROM school LIMIT 100;
/* 2024-11-05 15:13:09 [6 ms] */ 
UPDATE school
SET capacity = 150
WHERE name = 'Koldovstoretz';
/* 2024-11-05 15:13:10 [3 ms] */ 
SELECT * FROM school LIMIT 100;
/* 2024-11-05 15:13:24 [6 ms] */ 
UPDATE school
SET capacity = 160
WHERE name = 'Koldovstoretz';
/* 2024-11-05 15:13:30 [2 ms] */ 
SELECT * FROM school LIMIT 100;
/* 2024-11-05 15:13:35 [4 ms] */ 
UPDATE school
SET capacity = 150
WHERE name = 'Koldovstoretz';
/* 2024-11-05 15:19:41 [18 ms] */ 
DELETE FROM school
WHERE name LIKE '%magic%';
/* 2024-11-05 15:19:52 [2 ms] */ 
SELECT * FROM school LIMIT 100;
/* 2024-11-05 15:20:57 [3 ms] */ 
DELETE FROM school
WHERE name LIKE '%magic%';
/* 2024-11-05 15:21:20 [2 ms] */ 
SELECT * FROM school LIMIT 100;
/* 2024-11-06 11:48:57 [78 ms] */ 
ALTER TABLE wizard 
ADD school_id INT NOT NULL;
/* 2024-11-06 11:49:11 [55 ms] */ 
DESCRIBE wizard;
/* 2024-11-06 11:51:09 [5 ms] */ 
DESCRIBE school;
/* 2024-11-06 11:51:17 [6 ms] */ 
SHOW TABLES;
/* 2024-11-06 11:51:22 [6 ms] */ 
DESCRIBE wizard;
/* 2024-11-06 11:51:29 [5 ms] */ 
SELECT * FROM school LIMIT 100;
/* 2024-11-06 11:57:59 [5 ms] */ 
DESCRIBE wizard;
/* 2024-11-06 12:06:02 [20 ms] */ 
SELECT * FROM wizard WHERE school_id NOT IN (SELECT id FROM school) LIMIT 100;
/* 2024-11-06 16:12:48 [17 ms] */ 
USE wild_db_quests_advanced;
/* 2024-11-06 16:13:14 [27 ms] */ 
CREATE TABLE school(
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  capacity INT,
  PRIMARY KEY (id)
);
/* 2024-11-06 16:13:43 [60 ms] */ 
CREATE TABLE wizard(
  id INT NOT NULL AUTO_INCREMENT,
  firstname VARCHAR(100) NOT NULL,
  lastname VARCHAR(100) NOT NULL,
  school_id INT,
  PRIMARY KEY (id),
  CONSTRAINT fk_wizard_school FOREIGN KEY (school_id) REFERENCES school(id)
);
/* 2024-11-06 16:15:30 [7 ms] */ 
INSERT INTO school
  (id, name, capacity)
  VALUES
  (1, 'Beauxbatons Academy of Magic', 550),
  (2, 'Castelobruxo', 380),
  (3, 'Durmstrang Institute', 570),
  (4, 'Hogwarts School of Witchcraft and Wizardry', 450),
  (5, 'Ilvermorny School of Witchcraft and Wizar', 300),
  (6, 'Koldovstoretz', 125),
  (7, 'Mahoutokoro School of Magic', 800),
  (8, 'Uagadou School of Magic', 350);
/* 2024-11-06 16:15:31 [22 ms] */ 
INSERT INTO wizard
  (firstname, lastname, school_id)
  VALUES
  ('fleur', 'delacour', 1),
  ('gabrielle', 'delacour', 1),
  ('viktor', 'krum', 3),
  ('gellert', 'grindelwald', 3),
  ('harry', 'potter', 4),
  ('hermione', 'granger', 4),
  ('lily', 'potter', 4),
  ('ron', 'weasley', 4),
  ('ginny', 'weasley', 4),
  ('fred', 'weasley', 4),
  ('george', 'weasley', 4),
  ('arthur', 'weasley', 4),
  ('molly', 'weasley', 4),
  ('drago', 'malefoy', 4),
  ('albus', 'dumbledore', 4),
  ('severus', 'rogue', 4),
  ('tom', 'jédusor', 4),
  ('dudley', 'dursley', 4),
  ('babajide', 'akingbade', 8),
  ('dudley', 'dursley', NULL);
/* 2024-11-06 16:16:01 [5 ms] */ 
SELECT * FROM school,wizard LIMIT 100;
/* 2024-11-06 16:16:24 [3 ms] */ 
SELECT * FROM school LIMIT 100;
/* 2024-11-06 16:16:35 [2 ms] */ 
SELECT * FROM wizard LIMIT 100;
/* 2024-11-06 16:19:20 [2 ms] */ 
SELECT firstname, lastname FROM wizard LIMIT 100;
/* 2024-11-06 16:19:44 [3 ms] */ 
SELECT firstname, lastname, name
FROM wizard
INNER JOIN school ON school.id=wizard.school_id LIMIT 100;
/* 2024-11-06 16:21:02 [3 ms] */ 
SELECT firstname, lastname
FROM wizard
INNER JOIN school ON school.id=wizard.school_id LIMIT 100;
/* 2024-11-06 16:21:52 [3 ms] */ 
SELECT firstname, lastname, name
FROM wizard
INNER JOIN school ON school.id=wizard.school_id LIMIT 100;
/* 2024-11-06 16:22:09 [3 ms] */ 
SELECT firstname, lastname, capacity
FROM wizard
INNER JOIN school ON school.id=wizard.school_id LIMIT 100;
/* 2024-11-06 16:24:57 [3 ms] */ 
SELECT firstname, lastname, name
FROM wizard
INNER JOIN school ON school.id=wizard.school_id LIMIT 100;
/* 2024-11-06 16:25:04 [20 ms] */ 
INSERT INTO wizard
  (firstname, lastname, school_id)
  VALUES
  ('fleur', 'delacour', 1),
  ('gabrielle', 'delacour', 1),
  ('viktor', 'krum', 3),
  ('gellert', 'grindelwald', 3),
  ('harry', 'potter', 4),
  ('hermione', 'granger', 4),
  ('lily', 'potter', 4),
  ('ron', 'weasley', 4),
  ('ginny', 'weasley', 4),
  ('fred', 'weasley', 4),
  ('george', 'weasley', 4),
  ('arthur', 'weasley', 4),
  ('molly', 'weasley', 4),
  ('drago', 'malefoy', 4),
  ('albus', 'dumbledore', 4),
  ('severus', 'rogue', 4),
  ('tom', 'jédusor', 4),
  ('dudley', 'dursley', 4),
  ('babajide', 'akingbade', 8),
  ('dudley', 'dursley', NULL);
/* 2024-11-06 16:30:38 [5 ms] */ 
SELECT firstname, lastname, name
FROM wizard
INNER JOIN school ON school.id=wizard.school_id LIMIT 100;
/* 2024-11-06 16:31:37 [4 ms] */ 
SELECT w.firstname, w.lastname, s.name as school_name
FROM wizard AS w
LEFT JOIN school AS s ON s.id=w.school_id LIMIT 100;
/* 2024-11-06 16:32:28 [4 ms] */ 
SELECT w.firstname, w.lastname, s.name as school_name
FROM wizard AS w
RIGHT JOIN school AS s ON s.id=w.school_id LIMIT 100;
/* 2024-11-06 16:49:09 [50 ms] */ 
DROP DATABASE IF EXISTS wild_db_quests_advanced;
/* 2024-11-06 16:49:10 [6 ms] */ 
CREATE DATABASE wild_db_quests_advanced;
/* 2024-11-06 16:49:12 [2 ms] */ 
USE wild_db_quests_advanced;
/* 2024-11-06 16:49:15 [19 ms] */ 
CREATE TABLE wizard(
  id INT NOT NULL AUTO_INCREMENT,
  firstname VARCHAR(100) NOT NULL,
  lastname VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);
/* 2024-11-06 16:50:36 [34 ms] */ 
CREATE TABLE team(
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(80) NOT NULL,
  PRIMARY KEY (id)    
);
/* 2024-11-06 16:54:04 [40 ms] */ 
CREATE TABLE player(
  id INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (id),
  `role` VARCHAR(50),
  enrollment_date DATE DEFAULT NULL
);
/* 2024-11-06 16:55:57 [32 ms] */ 
DROP TABLE player;
/* 2024-11-06 16:56:04 [70 ms] */ 
CREATE TABLE player(
  id INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (id),
  `role` VARCHAR(50),
  enrollment_date DATE DEFAULT NULL,
  wizard_id INT NOT NULL,
  team_id INT NULL,
  CONSTRAINT fk_player_wizard FOREIGN KEY (wizard_id) REFERENCES wizard(id),
  CONSTRAINT fk_player_team FOREIGN KEY (team_id) REFERENCES team(id) 
);
/* 2024-11-06 17:00:58 [32 ms] */ 
INSERT INTO wizard
  (id, firstname, lastname)
  VALUES
  (1, 'Hannah', 'Abbott'), (2, 'Katie', 'Bell'), (3, 'Cuthbert', 'Binns'), (4, 'Phineas', 'Nigellus'), (5, 'Regulus', 'Black'), (6, 'Sirius', 'Black'), (7, 'Amelia', 'Bones'), (8, 'Susan', 'Bones'), (9, 'Terry', 'Boot'), (10, 'Lavender', 'Brown'), (11, 'Millicent', 'Bulstrode'), (12, 'Cho', 'Chang'), (13, 'Penelope', 'Clearwater'), (14, 'Michael', 'Corner'), (15, 'Crabbe', ''), (16, 'Vincent', 'Crabbe'), (17, 'Colin', 'Creevey'), (18, 'Dennis', 'Creevey'), (19, 'Cedric', 'Diggory'), (20, 'Aberforth', 'Dumbledore'), (21, 'Albus', 'Dumbledore'), (22, 'Marietta', 'Edgecombe'), (23, 'Justin', 'Finch-Fletchley'), (24, 'Seamus', 'Finnigan'), (25, 'Marcus', 'Flint'), (26, 'Filius', 'Flitwick'), (27, 'Anthony', 'Goldstein'), (28, 'Gregory', 'Goyle'), (29, 'Hermione', 'Granger'), (30, 'Godric', 'Gryffindor'), (31, 'Rubeus', 'Hagrid'), (32, 'Helga', 'Hufflepuff'), (33, 'Angelina', 'Johnson'), (34, 'Lee', 'Jordan'), (35, 'Bellatrix', 'Lestrange'), (36, 'Rabastan', 'Lestrange'), (37, 'Rodolphus', 'Lestrange'), (38, 'Gilderoy', 'Lockhart'), (39, 'Alice', 'Longbottom'), (40, 'Frank', 'Longbottom'), (41, 'Augusta', 'Longbottom'), (42, 'Neville', 'Longbottom'), (43, 'Luna', 'Lovegood'), (44, 'Xenophilius', 'Lovegood'), (45, 'Remus', 'Lupin'), (46, 'Draco', 'Malfoy'), (47, 'Lucius', 'Malfoy'), (48, 'Narcissa', 'Malfoy'), (49, 'Minerva', 'McGonagall'), (50, 'Theodore', 'Nott'), (51, 'Garrick', 'Ollivander'), (52, 'Pansy', 'Parkinson'), (53, 'Padma', 'Patil'), (54, 'Parvati', 'Patil'), (55, 'Peter', 'Pettigrew'), (56, 'Harry', 'Potter'), (57, 'James', 'Potter'), (58, 'Lily', 'J.'), (59, 'Quirinus', 'Quirrell'), (60, 'Helena', 'Ravenclaw'), (61, 'Rowena', 'Ravenclaw'), (62, 'Tom', 'Riddle'), (63, 'Demelza', 'Robins'), (64, 'Newton', 'Scamander'), (65, 'Horace', 'Slughorn'), (66, 'Salazar', 'Slytherin'), (67, 'Hepzibah', 'Smith'), (68, 'Zacharias', 'Smith'), (69, 'Severus', 'Snape'), (70, 'Alicia', 'Spinnet'), (71, 'Pomona', 'Sprout'), (72, 'Dean', 'Thomas'), (73, 'Andromeda', 'Tonks'), (74, 'Nymphadora', 'Tonks'), (75, 'Sybill', 'Trelawney'), (76, 'Dolores', 'Umbridge'), (77, 'Romilda', 'Vane'), (78, 'Arthur', 'Weasley'), (79, 'William', 'Weasley'), (80, 'Charles', 'Weasley'), (81, 'Fred', 'Weasley'), (82, 'George', 'Weasley'), (83, 'Ginevra', 'Weasley'), (84, 'Molly', 'Weasley'), (85, 'Percy', 'Weasley'), (86, 'Ronald', 'Weasley'), (87, 'Oliver', 'Wood'), (88, 'Blaise', 'Zabini'), (89, 'Bloody', 'Baron'), (90, 'Cadogan', ''), (91, 'Fat', 'Friar'), (92, 'Myrtle', 'Warren');
/* 2024-11-06 17:01:04 [9 ms] */ 
INSERT INTO team
  (id, name)
  VALUES
  (1, 'Gryffindor'), (2, 'Ravenclaw'), (3, 'Slytherin'), (4, 'Hufflepuff');
/* 2024-11-06 17:01:06 [34 ms] */ 
INSERT INTO player
  (id, wizard_id, team_id, role, enrollment_date)
  VALUES
  (1, 1, 4, 'beater', '1995-10-09'), (2, 2, 1, 'chaser', '1995-08-17'), (3, 3, 1, 'seeker', '1994-12-03'), (4, 4, 3, 'chaser', '1995-03-24'), (5, 5, 3, 'keeper', '1997-07-16'), (6, 6, 1, 'beater', '1994-01-10'), (7, 7, 4, 'chaser', '1999-01-21'), (8, 8, 4, 'keeper', '1991-10-20'), (10, 10, 1, 'beater', '1991-08-03'), (11, 11, 3, 'beater', '1996-10-04'), (12, 12, 2, 'chaser', '1992-01-27'), (13, 13, 2, 'beater', '1991-01-11'), (14, 14, 2, 'seeker', '1995-08-17'), (16, 16, 3, 'beater', '1992-11-27'), (17, 17, 1, 'seeker', '1993-07-07'), (18, 18, 1, 'keeper', '1991-05-01'), (19, 19, 4, 'keeper', '1997-11-02'), (20, 20, 1, 'keeper', '1995-04-24'), (21, 21, 1, 'chaser', '1991-03-12'), (22, 22, 2, 'chaser', '1990-07-05'), (23, 23, 4, 'beater', '1995-01-06'), (24, 24, 1, 'beater', '1997-02-08'), (25, 25, 3, 'beater', '1996-12-16'), (26, 26, 2, 'chaser', '1997-02-07'), (27, 27, 2, 'chaser', '1999-07-31'), (28, 28, 3, 'seeker', '1994-05-13'), (29, 29, 1, 'chaser', '1997-08-14'), (30, 30, 1, 'seeker', '1993-08-30'), (31, 31, 1, 'beater', '1994-11-16'), (32, 32, 4, 'seeker', '1992-08-14'), (33, 33, 1, 'keeper', '1995-12-02'), (34, 34, 1, 'chaser', '1996-01-31'), (35, 35, 3, 'chaser', '1992-03-21'), (36, 36, 3, 'seeker', '1997-10-30'), (37, 37, 3, 'chaser', '1991-04-27'), (38, 38, 2, 'chaser', '1998-04-05'), (39, 39, 1, 'beater', '1992-02-17'), (40, 40, 1, 'chaser', '1995-10-15'), (41, 41, 1, 'chaser', '1999-10-25'), (42, 42, 1, 'chaser', '1998-05-06'), (43, 43, 2, 'chaser', '1998-03-01'), (44, 44, 2, 'chaser', '1991-03-11'), (46, 46, 3, 'chaser', '1993-11-02'), (47, 47, 3, 'chaser', '1992-03-12'), (48, 48, 3, 'seeker', '1993-03-17'), (49, 49, 1, 'beater', '1992-07-14'), (50, 50, 3, 'chaser', '1996-12-02'), (51, 51, 2, 'chaser', '1995-06-25'), (52, 52, 3, 'beater', '1991-12-14'), (55, 55, 1, 'chaser', '1991-05-14'), (56, 56, 1, 'beater', '1997-03-05'), (57, 57, 1, 'beater', '1996-12-07'), (58, 58, 1, 'chaser', '1999-02-23'), (59, 59, 2, 'beater', '1995-09-23'), (60, 60, 2, 'beater', '1992-04-12'), (61, 61, 2, 'seeker', '1992-10-09'), (62, 62, 3, 'chaser', '1990-02-27'), (64, 64, 4, 'chaser', '1999-01-12'), (66, 66, 3, 'seeker', '1991-02-23'), (67, 67, 4, 'beater', '1996-07-18'), (68, 68, 4, 'keeper', '1993-10-01'), (69, 69, 3, 'beater', '1997-03-06'), (70, 70, 1, 'chaser', '1995-11-08'), (71, 71, 4, 'beater', '1998-06-12'), (72, 72, 1, 'beater', '1997-11-23'), (73, 73, 3, 'chaser', '1994-01-28'), (74, 74, 4, 'beater', '1999-11-25'), (75, 75, 2, 'seeker', '1991-12-28'), (76, 76, 3, 'seeker', '1993-10-23'), (77, 77, 1, 'seeker', '1990-07-31'), (78, 78, 1, 'beater', '1992-01-01'), (79, 79, 1, 'seeker', '1991-04-27'), (81, 81, 1, 'seeker', '1998-03-29'), (82, 82, 1, 'chaser', '1991-08-26'), (83, 83, 1, 'keeper', '1992-04-17'), (85, 85, 1, 'beater', '1990-09-05'), (86, 86, 1, 'seeker', '1997-06-22'), (87, 87, 1, 'chaser', '1999-04-08'), (88, 88, 3, 'beater', '1991-07-08'), (89, 89, 3, 'chaser', '1996-09-25'), (90, 90, 1, 'keeper', '1993-01-04'), (91, 91, 4, 'beater', '1993-11-04'), (92, 92, 2, 'beater', '1997-12-14');
/* 2024-11-06 17:01:40 [6 ms] */ 
SELECT * FROM player LIMIT 100;
/* 2024-11-06 17:12:08 [9 ms] */ 
SELECT firstname, lastname, role, name
FROM player
INNER JOIN wizard ON wizard.id=player.wizard_id
INNER JOIN team ON team.id=player.wizard_id LIMIT 100;
/* 2024-11-06 17:14:06 [6 ms] */ 
SELECT firstname, lastname, role, name
FROM player
INNER JOIN wizard ON wizard.id=player.wizard_id
INNER JOIN team ON team.id=player.wizard_id
ORDER BY name ASC, role, lastname, firstname LIMIT 100;
/* 2024-11-06 17:18:57 [10 ms] */ 
SELECT firstname, lastname, role, name
FROM player
INNER JOIN wizard ON wizard.id=player.wizard_id
INNER JOIN team ON team.id=player.team_id
ORDER BY name ASC, role, lastname, firstname LIMIT 100;
/* 2024-11-06 17:21:46 [8 ms] */ 
SELECT lastname, firstname, role, name
FROM player
INNER JOIN wizard ON wizard.id=player.wizard_id
INNER JOIN team ON team.id=player.team_id
ORDER BY name ASC, role, lastname, firstname LIMIT 100;
/* 2024-11-06 17:22:37 [9 ms] */ 
SELECT lastname, firstname, role, name
FROM player
INNER JOIN wizard ON wizard.id=player.wizard_id
INNER JOIN team ON team.id=player.team_id
ORDER BY name ASC, role ASC, lastname ASC, firstname ASC LIMIT 100;
/* 2024-11-06 17:24:33 [10 ms] */ 
SELECT firstname, lastname
FROM player
INNER JOIN wizard ON wizard.id=player.wizard_id
INNER JOIN team ON team.id=player.team_id
ORDER BY lastname ASC, firstname ASC LIMIT 100;
/* 2024-11-06 17:25:01 [9 ms] */ 
SELECT firstname, lastname
FROM player
INNER JOIN wizard ON wizard.id=player.wizard_id
INNER JOIN team ON team.id=player.team_id
WHERE role='seeker' ORDER BY lastname ASC, firstname ASC LIMIT 100;
/* 2024-11-06 17:27:21 [19 ms] */ 
SELECT firstname, lastname
FROM player  
INNER JOIN wizard ON wizard.id=player.wizard_id
INNER JOIN team ON team.id=player.team_id
WHERE team.id=NULL LIMIT 100;
/* 2024-11-06 17:28:05 [7 ms] */ 
SELECT firstname, lastname
FROM player  
INNER JOIN wizard ON wizard.id=player.wizard_id
RIGHT JOIN team ON team.id=player.team_id LIMIT 100;
/* 2024-11-06 17:28:17 [8 ms] */ 
SELECT firstname, lastname, name
FROM player  
INNER JOIN wizard ON wizard.id=player.wizard_id
RIGHT JOIN team ON team.id=player.team_id LIMIT 100;
/* 2024-11-06 17:28:53 [7 ms] */ 
SELECT firstname, lastname, name
FROM player  
INNER JOIN wizard ON wizard.id=player.wizard_id
LEFT JOIN team ON team.id=player.team_id LIMIT 100;
/* 2024-11-07 09:34:11 [31 ms] */ 
SELECT firstname, lastname, name
FROM player  
INNER JOIN wizard ON wizard.id=player.wizard_id
INNER JOIN team ON team.id=player.team_id LIMIT 100;
/* 2024-11-07 09:36:23 [20 ms] */ 
SELECT firstname, lastname, name
FROM player  
INNER JOIN wizard ON wizard.id=player.wizard_id
INNER JOIN team ON team.id=player.team_id
WHERE team.id=0 LIMIT 100;
/* 2024-11-07 09:47:07 [7 ms] */ 
SELECT firstname, lastname
FROM wizard  
LEFT JOIN player ON wizard.id=player.team_id
WHERE player.team_id LIMIT 100;
/* 2024-11-07 09:47:55 [6 ms] */ 
SELECT firstname, lastname
FROM wizard  
LEFT JOIN player ON wizard.id=player.team_id
WHERE player.team_id IS NULL LIMIT 100;
/* 2024-11-07 09:50:33 [7 ms] */ 
SELECT w.id, w.firstname, w.lastname
FROM wizard w
LEFT JOIN player p ON w.id = p.wizard_id
WHERE p.team_id IS NULL OR p.team_id = 0 LIMIT 100;
/* 2024-11-07 09:51:08 [28 ms] */ 
SELECT w.id, w.firstname, w.lastname
FROM wizard AS w
LEFT JOIN player AS p ON w.id = p.wizard_id
WHERE p.team_id IS NULL OR p.team_id = 0 LIMIT 100;
/* 2024-11-07 10:07:16 [7 ms] */ 
SELECT firstname, lastname
FROM player
INNER JOIN wizard ON wizard.id=player.wizard_id
INNER JOIN team ON team.id=player.team_id
WHERE role='seeker' ORDER BY lastname ASC, firstname ASC LIMIT 100;
/* 2024-11-07 10:07:28 [9 ms] */ 
SELECT lastname, firstname, role, name
FROM player
INNER JOIN wizard ON wizard.id=player.wizard_id
INNER JOIN team ON team.id=player.team_id
ORDER BY name ASC, role ASC, lastname ASC, firstname ASC LIMIT 100;
/* 2024-11-07 10:07:35 [7 ms] */ 
SELECT w.id, w.firstname, w.lastname
FROM wizard AS w
LEFT JOIN player AS p ON w.id = p.wizard_id
WHERE p.team_id IS NULL OR p.team_id = 0 LIMIT 100;
/* 2024-11-07 10:07:40 [10 ms] */ 
SELECT lastname, firstname, role, name
FROM player
INNER JOIN wizard ON wizard.id=player.wizard_id
INNER JOIN team ON team.id=player.team_id
ORDER BY name ASC, role ASC, lastname ASC, firstname ASC LIMIT 100;
/* 2024-11-07 10:08:48 [6 ms] */ 
SELECT w.id, w.firstname, w.lastname
FROM wizard AS w
LEFT JOIN player AS p ON w.id = p.wizard_id LIMIT 100;
/* 2024-11-07 10:09:15 [7 ms] */ 
SELECT w.id, w.firstname, w.lastname, p.role
FROM wizard AS w
LEFT JOIN player AS p ON w.id = p.wizard_id LIMIT 100;
/* 2024-11-07 10:09:34 [7 ms] */ 
SELECT w.id, w.firstname, w.lastname
FROM wizard AS w
LEFT JOIN player AS p ON w.id = p.wizard_id LIMIT 100;
/* 2024-11-07 10:09:49 [6 ms] */ 
SELECT w.id, w.firstname, w.lastname
FROM wizard AS w
LEFT JOIN player AS p ON w.id = p.wizard_id
WHERE p.team_id IS NULL OR p.team_id = 0 LIMIT 100;
/* 2024-11-07 10:24:07 [24 ms] */ 
SHOW TABLES;
/* 2024-11-07 10:24:17 [7 ms] */ 
DESCRIBE wizard;
/* 2024-11-07 10:24:25 [6 ms] */ 
DESCRIBE school;
/* 2024-11-07 10:24:41 [5 ms] */ 
DESCRIBE wizard;
/* 2024-11-07 10:47:10 [66 ms] */ 
DROP DATABASE IF EXISTS wild_db_quests_advanced;
/* 2024-11-07 10:47:13 [21 ms] */ 
CREATE DATABASE wild_db_quests_advanced;
/* 2024-11-07 10:47:21 [5 ms] */ 
USE wild_db_quests_advanced;
/* 2024-11-07 10:47:36 [40 ms] */ 
CREATE TABLE school(
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  capacity INT,
  PRIMARY KEY (id)
);
/* 2024-11-07 10:47:40 [77 ms] */ 
CREATE TABLE wizard(
  id INT NOT NULL AUTO_INCREMENT,
  firstname VARCHAR(100) NOT NULL,
  lastname VARCHAR(100) NOT NULL,
  school_id INT,
  PRIMARY KEY (id),
  CONSTRAINT fk_wizard_school FOREIGN KEY (school_id) REFERENCES school(id)
);
/* 2024-11-07 10:47:44 [26 ms] */ 
INSERT INTO school
  (id, name, capacity)
  VALUES
  (1, 'Beauxbatons Academy of Magic', 550),
  (2, 'Castelobruxo', 380),
  (3, 'Durmstrang Institute', 570),
  (4, 'Hogwarts School of Witchcraft and Wizardry', 450),
  (5, 'Ilvermorny School of Witchcraft and Wizar', 300),
  (6, 'Koldovstoretz', 125),
  (7, 'Mahoutokoro School of Magic', 800),
  (8, 'Uagadou School of Magic', 350);
/* 2024-11-07 10:47:45 [23 ms] */ 
INSERT INTO wizard
  (firstname, lastname, school_id)
  VALUES
  ('fleur', 'delacour', 1),
  ('gabrielle', 'delacour', 1),
  ('viktor', 'krum', 3),
  ('gellert', 'grindelwald', 3),
  ('harry', 'potter', 4),
  ('hermione', 'granger', 4),
  ('lily', 'potter', 4),
  ('ron', 'weasley', 4),
  ('ginny', 'weasley', 4),
  ('fred', 'weasley', 4),
  ('george', 'weasley', 4),
  ('arthur', 'weasley', 4),
  ('molly', 'weasley', 4),
  ('drago', 'malefoy', 4),
  ('albus', 'dumbledore', 4),
  ('severus', 'rogue', 4),
  ('tom', 'jédusor', 4),
  ('dudley', 'dursley', 4),
  ('babajide', 'akingbade', 8),
  ('dudley', 'dursley', NULL);
/* 2024-11-07 15:57:29 [19 ms] */ 
SELECT
  s.name, COUNT(*) as nb_student
FROM
  wizard w
INNER JOIN
  school AS s ON s.id=w.school_id
GROUP BY
  s.id LIMIT 100;
/* 2024-11-07 15:59:56 [2 ms] */ 
SELECT
  s.name, COUNT(*)
FROM
  wizard w
INNER JOIN
  school AS s ON s.id=w.school_id
GROUP BY
  s.id LIMIT 100;
/* 2024-11-07 16:00:34 [18 ms] */ 
SELECT
  s.name, COUNT(*) as nb_student /* on renomme COUNT pour que ce soit plus simple*/
FROM
  wizard w
INNER JOIN
  school AS s ON s.id=w.school_id
GROUP BY
  s.id
HAVING
  nb_student > 3 LIMIT 100;
/* 2024-11-07 16:02:42 [4 ms] */ 
SELECT
  s.name, COUNT(*) as nb_student /* on renomme COUNT pour que ce soit plus simple*/
FROM
  wizard w
INNER JOIN
  school AS s ON s.id=w.school_id
GROUP BY
  s.id
HAVING    /* Meme fonctionnement de WHERE mais WHERE s'applique sur les tuples, HAVING sur le regroupement donc APRES le GROUP BY*/
  nb_student > 3 LIMIT 100;
/* 2024-11-07 16:05:03 [18 ms] */ 
SELECT CONCAT(firstname, ' ', lastname) AS fullname FROM wizard LIMIT 100;
/* 2024-11-07 16:06:10 [3 ms] */ 
SELECT CONCAT(firstname, ' ', lastname) FROM wizard LIMIT 100;
/* 2024-11-07 16:06:19 [2 ms] */ 
SELECT CONCAT(firstname, ' ', lastname) AS fullname FROM wizard LIMIT 100;
/* 2024-11-07 16:08:39 [48 ms] */ 
DROP DATABASE IF EXISTS wild_db_quests_advanced;
/* 2024-11-07 16:08:41 [19 ms] */ 
CREATE DATABASE wild_db_quests_advanced;
/* 2024-11-07 16:08:43 [2 ms] */ 
USE wild_db_quests_advanced;
/* 2024-11-07 16:08:47 [32 ms] */ 
CREATE TABLE wizard(
  id INT NOT NULL AUTO_INCREMENT,
  firstname VARCHAR(100) NOT NULL,
  lastname VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);
/* 2024-11-07 16:08:49 [26 ms] */ 
CREATE TABLE team(
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);
/* 2024-11-07 16:08:50 [52 ms] */ 
CREATE TABLE player(
  id INT NOT NULL AUTO_INCREMENT,
  wizard_id INT NOT NULL,
  team_id INT NULL,
  role VARCHAR(100) NOT NULL,
  enrollment_date DATE NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT fk_player_wizard FOREIGN KEY (wizard_id) REFERENCES wizard(id),
  CONSTRAINT fk_player_team FOREIGN KEY (team_id) REFERENCES team(id)
);
/* 2024-11-07 16:08:51 [19 ms] */ 
INSERT INTO team
  (id, name)
  VALUES
  (1, 'Gryffindor'), (2, 'Ravenclaw'), (3, 'Slytherin'), (4, 'Hufflepuff');
/* 2024-11-07 16:08:52 [28 ms] */ 
INSERT INTO wizard
  (id, firstname, lastname)
  VALUES
  (1, 'Hannah', 'Abbott'), (2, 'Katie', 'Bell'), (3, 'Cuthbert', 'Binns'), (4, 'Phineas', 'Nigellus'), (5, 'Regulus', 'Black'), (6, 'Sirius', 'Black'), (7, 'Amelia', 'Bones'), (8, 'Susan', 'Bones'), (9, 'Terry', 'Boot'), (10, 'Lavender', 'Brown'), (11, 'Millicent', 'Bulstrode'), (12, 'Cho', 'Chang'), (13, 'Penelope', 'Clearwater'), (14, 'Michael', 'Corner'), (15, 'Crabbe', ''), (16, 'Vincent', 'Crabbe'), (17, 'Colin', 'Creevey'), (18, 'Dennis', 'Creevey'), (19, 'Cedric', 'Diggory'), (20, 'Aberforth', 'Dumbledore'), (21, 'Albus', 'Dumbledore'), (22, 'Marietta', 'Edgecombe'), (23, 'Justin', 'Finch-Fletchley'), (24, 'Seamus', 'Finnigan'), (25, 'Marcus', 'Flint'), (26, 'Filius', 'Flitwick'), (27, 'Anthony', 'Goldstein'), (28, 'Gregory', 'Goyle'), (29, 'Hermione', 'Granger'), (30, 'Godric', 'Gryffindor'), (31, 'Rubeus', 'Hagrid'), (32, 'Helga', 'Hufflepuff'), (33, 'Angelina', 'Johnson'), (34, 'Lee', 'Jordan'), (35, 'Bellatrix', 'Lestrange'), (36, 'Rabastan', 'Lestrange'), (37, 'Rodolphus', 'Lestrange'), (38, 'Gilderoy', 'Lockhart'), (39, 'Alice', 'Longbottom'), (40, 'Frank', 'Longbottom'), (41, 'Augusta', 'Longbottom'), (42, 'Neville', 'Longbottom'), (43, 'Luna', 'Lovegood'), (44, 'Xenophilius', 'Lovegood'), (45, 'Remus', 'Lupin'), (46, 'Draco', 'Malfoy'), (47, 'Lucius', 'Malfoy'), (48, 'Narcissa', 'Malfoy'), (49, 'Minerva', 'McGonagall'), (50, 'Theodore', 'Nott'), (51, 'Garrick', 'Ollivander'), (52, 'Pansy', 'Parkinson'), (53, 'Padma', 'Patil'), (54, 'Parvati', 'Patil'), (55, 'Peter', 'Pettigrew'), (56, 'Harry', 'Potter'), (57, 'James', 'Potter'), (58, 'Lily', 'J.'), (59, 'Quirinus', 'Quirrell'), (60, 'Helena', 'Ravenclaw'), (61, 'Rowena', 'Ravenclaw'), (62, 'Tom', 'Riddle'), (63, 'Demelza', 'Robins'), (64, 'Newton', 'Scamander'), (65, 'Horace', 'Slughorn'), (66, 'Salazar', 'Slytherin'), (67, 'Hepzibah', 'Smith'), (68, 'Zacharias', 'Smith'), (69, 'Severus', 'Snape'), (70, 'Alicia', 'Spinnet'), (71, 'Pomona', 'Sprout'), (72, 'Dean', 'Thomas'), (73, 'Andromeda', 'Tonks'), (74, 'Nymphadora', 'Tonks'), (75, 'Sybill', 'Trelawney'), (76, 'Dolores', 'Umbridge'), (77, 'Romilda', 'Vane'), (78, 'Arthur', 'Weasley'), (79, 'William', 'Weasley'), (80, 'Charles', 'Weasley'), (81, 'Fred', 'Weasley'), (82, 'George', 'Weasley'), (83, 'Ginevra', 'Weasley'), (84, 'Molly', 'Weasley'), (85, 'Percy', 'Weasley'), (86, 'Ronald', 'Weasley'), (87, 'Oliver', 'Wood'), (88, 'Blaise', 'Zabini'), (89, 'Bloody', 'Baron'), (90, 'Cadogan', ''), (91, 'Fat', 'Friar'), (92, 'Myrtle', 'Warren');
/* 2024-11-07 16:08:54 [28 ms] */ 
INSERT INTO player
  (id, wizard_id, team_id, role, enrollment_date)
  VALUES
  (1, 1, 4, 'beater', '1995-10-09'), (2, 2, 1, 'chaser', '1995-08-17'), (3, 3, 1, 'seeker', '1994-12-03'), (4, 4, 3, 'chaser', '1995-03-24'), (5, 5, 3, 'keeper', '1997-07-16'), (6, 6, 1, 'beater', '1994-01-10'), (7, 7, 4, 'chaser', '1999-01-21'), (8, 8, 4, 'keeper', '1991-10-20'), (10, 10, 1, 'beater', '1991-08-03'), (11, 11, 3, 'beater', '1996-10-04'), (12, 12, 2, 'chaser', '1992-01-27'), (13, 13, 2, 'beater', '1991-01-11'), (14, 14, 2, 'seeker', '1995-08-17'), (16, 16, 3, 'beater', '1992-11-27'), (17, 17, 1, 'seeker', '1993-07-07'), (18, 18, 1, 'keeper', '1991-05-01'), (19, 19, 4, 'keeper', '1997-11-02'), (20, 20, 1, 'keeper', '1995-04-24'), (21, 21, 1, 'chaser', '1991-03-12'), (22, 22, 2, 'chaser', '1990-07-05'), (23, 23, 4, 'beater', '1995-01-06'), (24, 24, 1, 'beater', '1997-02-08'), (25, 25, 3, 'beater', '1996-12-16'), (26, 26, 2, 'chaser', '1997-02-07'), (27, 27, 2, 'chaser', '1999-07-31'), (28, 28, 3, 'seeker', '1994-05-13'), (29, 29, 1, 'chaser', '1997-08-14'), (30, 30, 1, 'seeker', '1993-08-30'), (31, 31, 1, 'beater', '1994-11-16'), (32, 32, 4, 'seeker', '1992-08-14'), (33, 33, 1, 'keeper', '1995-12-02'), (34, 34, 1, 'chaser', '1996-01-31'), (35, 35, 3, 'chaser', '1992-03-21'), (36, 36, 3, 'seeker', '1997-10-30'), (37, 37, 3, 'chaser', '1991-04-27'), (38, 38, 2, 'chaser', '1998-04-05'), (39, 39, 1, 'beater', '1992-02-17'), (40, 40, 1, 'chaser', '1995-10-15'), (41, 41, 1, 'chaser', '1999-10-25'), (42, 42, 1, 'chaser', '1998-05-06'), (43, 43, 2, 'chaser', '1998-03-01'), (44, 44, 2, 'chaser', '1991-03-11'), (46, 46, 3, 'chaser', '1993-11-02'), (47, 47, 3, 'chaser', '1992-03-12'), (48, 48, 3, 'seeker', '1993-03-17'), (49, 49, 1, 'beater', '1992-07-14'), (50, 50, 3, 'chaser', '1996-12-02'), (51, 51, 2, 'chaser', '1995-06-25'), (52, 52, 3, 'beater', '1991-12-14'), (55, 55, 1, 'chaser', '1991-05-14'), (56, 56, 1, 'beater', '1997-03-05'), (57, 57, 1, 'beater', '1996-12-07'), (58, 58, 1, 'chaser', '1999-02-23'), (59, 59, 2, 'beater', '1995-09-23'), (60, 60, 2, 'beater', '1992-04-12'), (61, 61, 2, 'seeker', '1992-10-09'), (62, 62, 3, 'chaser', '1990-02-27'), (64, 64, 4, 'chaser', '1999-01-12'), (66, 66, 3, 'seeker', '1991-02-23'), (67, 67, 4, 'beater', '1996-07-18'), (68, 68, 4, 'keeper', '1993-10-01'), (69, 69, 3, 'beater', '1997-03-06'), (70, 70, 1, 'chaser', '1995-11-08'), (71, 71, 4, 'beater', '1998-06-12'), (72, 72, 1, 'beater', '1997-11-23'), (73, 73, 3, 'chaser', '1994-01-28'), (74, 74, 4, 'beater', '1999-11-25'), (75, 75, 2, 'seeker', '1991-12-28'), (76, 76, 3, 'seeker', '1993-10-23'), (77, 77, 1, 'seeker', '1990-07-31'), (78, 78, 1, 'beater', '1992-01-01'), (79, 79, 1, 'seeker', '1991-04-27'), (81, 81, 1, 'seeker', '1998-03-29'), (82, 82, 1, 'chaser', '1991-08-26'), (83, 83, 1, 'keeper', '1992-04-17'), (85, 85, 1, 'beater', '1990-09-05'), (86, 86, 1, 'seeker', '1997-06-22'), (87, 87, 1, 'chaser', '1999-04-08'), (88, 88, 3, 'beater', '1991-07-08'), (89, 89, 3, 'chaser', '1996-09-25'), (90, 90, 1, 'keeper', '1993-01-04'), (91, 91, 4, 'beater', '1993-11-04'), (92, 92, 2, 'beater', '1997-12-14');
/* 2024-11-07 17:14:26 [60 ms] */ 
DROP DATABASE IF EXISTS wild_db_quests_advanced;
/* 2024-11-07 17:14:27 [8 ms] */ 
CREATE DATABASE wild_db_quests_advanced;
/* 2024-11-07 17:14:28 [6 ms] */ 
USE wild_db_quests_advanced;
/* 2024-11-07 17:14:28 [42 ms] */ 
CREATE TABLE wizard(
  id INT NOT NULL AUTO_INCREMENT,
  firstname VARCHAR(100) NOT NULL,
  lastname VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);
/* 2024-11-07 17:14:29 [28 ms] */ 
CREATE TABLE team(
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(80) NOT NULL,
  PRIMARY KEY (id)    
);
/* 2024-11-07 17:14:30 [80 ms] */ 
CREATE TABLE player(
  id INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (id),
  `role` VARCHAR(50),
  enrollment_date DATE DEFAULT NULL,
  wizard_id INT NOT NULL,
  team_id INT NULL,
  CONSTRAINT fk_player_wizard FOREIGN KEY (wizard_id) REFERENCES wizard(id), /*Relier les id avec ceux dans les tables correspondantes */
  CONSTRAINT fk_player_team FOREIGN KEY (team_id) REFERENCES team(id) 
);
/* 2024-11-07 17:14:31 [21 ms] */ 
INSERT INTO team
  (id, name)
  VALUES
  (1, 'Gryffindor'), (2, 'Ravenclaw'), (3, 'Slytherin'), (4, 'Hufflepuff');
/* 2024-11-07 17:14:36 [43 ms] */ 
INSERT INTO wizard
  (id, firstname, lastname)
  VALUES
  (1, 'Hannah', 'Abbott'), (2, 'Katie', 'Bell'), (3, 'Cuthbert', 'Binns'), (4, 'Phineas', 'Nigellus'), (5, 'Regulus', 'Black'), (6, 'Sirius', 'Black'), (7, 'Amelia', 'Bones'), (8, 'Susan', 'Bones'), (9, 'Terry', 'Boot'), (10, 'Lavender', 'Brown'), (11, 'Millicent', 'Bulstrode'), (12, 'Cho', 'Chang'), (13, 'Penelope', 'Clearwater'), (14, 'Michael', 'Corner'), (15, 'Crabbe', ''), (16, 'Vincent', 'Crabbe'), (17, 'Colin', 'Creevey'), (18, 'Dennis', 'Creevey'), (19, 'Cedric', 'Diggory'), (20, 'Aberforth', 'Dumbledore'), (21, 'Albus', 'Dumbledore'), (22, 'Marietta', 'Edgecombe'), (23, 'Justin', 'Finch-Fletchley'), (24, 'Seamus', 'Finnigan'), (25, 'Marcus', 'Flint'), (26, 'Filius', 'Flitwick'), (27, 'Anthony', 'Goldstein'), (28, 'Gregory', 'Goyle'), (29, 'Hermione', 'Granger'), (30, 'Godric', 'Gryffindor'), (31, 'Rubeus', 'Hagrid'), (32, 'Helga', 'Hufflepuff'), (33, 'Angelina', 'Johnson'), (34, 'Lee', 'Jordan'), (35, 'Bellatrix', 'Lestrange'), (36, 'Rabastan', 'Lestrange'), (37, 'Rodolphus', 'Lestrange'), (38, 'Gilderoy', 'Lockhart'), (39, 'Alice', 'Longbottom'), (40, 'Frank', 'Longbottom'), (41, 'Augusta', 'Longbottom'), (42, 'Neville', 'Longbottom'), (43, 'Luna', 'Lovegood'), (44, 'Xenophilius', 'Lovegood'), (45, 'Remus', 'Lupin'), (46, 'Draco', 'Malfoy'), (47, 'Lucius', 'Malfoy'), (48, 'Narcissa', 'Malfoy'), (49, 'Minerva', 'McGonagall'), (50, 'Theodore', 'Nott'), (51, 'Garrick', 'Ollivander'), (52, 'Pansy', 'Parkinson'), (53, 'Padma', 'Patil'), (54, 'Parvati', 'Patil'), (55, 'Peter', 'Pettigrew'), (56, 'Harry', 'Potter'), (57, 'James', 'Potter'), (58, 'Lily', 'J.'), (59, 'Quirinus', 'Quirrell'), (60, 'Helena', 'Ravenclaw'), (61, 'Rowena', 'Ravenclaw'), (62, 'Tom', 'Riddle'), (63, 'Demelza', 'Robins'), (64, 'Newton', 'Scamander'), (65, 'Horace', 'Slughorn'), (66, 'Salazar', 'Slytherin'), (67, 'Hepzibah', 'Smith'), (68, 'Zacharias', 'Smith'), (69, 'Severus', 'Snape'), (70, 'Alicia', 'Spinnet'), (71, 'Pomona', 'Sprout'), (72, 'Dean', 'Thomas'), (73, 'Andromeda', 'Tonks'), (74, 'Nymphadora', 'Tonks'), (75, 'Sybill', 'Trelawney'), (76, 'Dolores', 'Umbridge'), (77, 'Romilda', 'Vane'), (78, 'Arthur', 'Weasley'), (79, 'William', 'Weasley'), (80, 'Charles', 'Weasley'), (81, 'Fred', 'Weasley'), (82, 'George', 'Weasley'), (83, 'Ginevra', 'Weasley'), (84, 'Molly', 'Weasley'), (85, 'Percy', 'Weasley'), (86, 'Ronald', 'Weasley'), (87, 'Oliver', 'Wood'), (88, 'Blaise', 'Zabini'), (89, 'Bloody', 'Baron'), (90, 'Cadogan', ''), (91, 'Fat', 'Friar'), (92, 'Myrtle', 'Warren');
/* 2024-11-07 17:14:37 [40 ms] */ 
INSERT INTO player
  (id, wizard_id, team_id, role, enrollment_date)
  VALUES
  (1, 1, 4, 'beater', '1995-10-09'), (2, 2, 1, 'chaser', '1995-08-17'), (3, 3, 1, 'seeker', '1994-12-03'), (4, 4, 3, 'chaser', '1995-03-24'), (5, 5, 3, 'keeper', '1997-07-16'), (6, 6, 1, 'beater', '1994-01-10'), (7, 7, 4, 'chaser', '1999-01-21'), (8, 8, 4, 'keeper', '1991-10-20'), (10, 10, 1, 'beater', '1991-08-03'), (11, 11, 3, 'beater', '1996-10-04'), (12, 12, 2, 'chaser', '1992-01-27'), (13, 13, 2, 'beater', '1991-01-11'), (14, 14, 2, 'seeker', '1995-08-17'), (16, 16, 3, 'beater', '1992-11-27'), (17, 17, 1, 'seeker', '1993-07-07'), (18, 18, 1, 'keeper', '1991-05-01'), (19, 19, 4, 'keeper', '1997-11-02'), (20, 20, 1, 'keeper', '1995-04-24'), (21, 21, 1, 'chaser', '1991-03-12'), (22, 22, 2, 'chaser', '1990-07-05'), (23, 23, 4, 'beater', '1995-01-06'), (24, 24, 1, 'beater', '1997-02-08'), (25, 25, 3, 'beater', '1996-12-16'), (26, 26, 2, 'chaser', '1997-02-07'), (27, 27, 2, 'chaser', '1999-07-31'), (28, 28, 3, 'seeker', '1994-05-13'), (29, 29, 1, 'chaser', '1997-08-14'), (30, 30, 1, 'seeker', '1993-08-30'), (31, 31, 1, 'beater', '1994-11-16'), (32, 32, 4, 'seeker', '1992-08-14'), (33, 33, 1, 'keeper', '1995-12-02'), (34, 34, 1, 'chaser', '1996-01-31'), (35, 35, 3, 'chaser', '1992-03-21'), (36, 36, 3, 'seeker', '1997-10-30'), (37, 37, 3, 'chaser', '1991-04-27'), (38, 38, 2, 'chaser', '1998-04-05'), (39, 39, 1, 'beater', '1992-02-17'), (40, 40, 1, 'chaser', '1995-10-15'), (41, 41, 1, 'chaser', '1999-10-25'), (42, 42, 1, 'chaser', '1998-05-06'), (43, 43, 2, 'chaser', '1998-03-01'), (44, 44, 2, 'chaser', '1991-03-11'), (46, 46, 3, 'chaser', '1993-11-02'), (47, 47, 3, 'chaser', '1992-03-12'), (48, 48, 3, 'seeker', '1993-03-17'), (49, 49, 1, 'beater', '1992-07-14'), (50, 50, 3, 'chaser', '1996-12-02'), (51, 51, 2, 'chaser', '1995-06-25'), (52, 52, 3, 'beater', '1991-12-14'), (55, 55, 1, 'chaser', '1991-05-14'), (56, 56, 1, 'beater', '1997-03-05'), (57, 57, 1, 'beater', '1996-12-07'), (58, 58, 1, 'chaser', '1999-02-23'), (59, 59, 2, 'beater', '1995-09-23'), (60, 60, 2, 'beater', '1992-04-12'), (61, 61, 2, 'seeker', '1992-10-09'), (62, 62, 3, 'chaser', '1990-02-27'), (64, 64, 4, 'chaser', '1999-01-12'), (66, 66, 3, 'seeker', '1991-02-23'), (67, 67, 4, 'beater', '1996-07-18'), (68, 68, 4, 'keeper', '1993-10-01'), (69, 69, 3, 'beater', '1997-03-06'), (70, 70, 1, 'chaser', '1995-11-08'), (71, 71, 4, 'beater', '1998-06-12'), (72, 72, 1, 'beater', '1997-11-23'), (73, 73, 3, 'chaser', '1994-01-28'), (74, 74, 4, 'beater', '1999-11-25'), (75, 75, 2, 'seeker', '1991-12-28'), (76, 76, 3, 'seeker', '1993-10-23'), (77, 77, 1, 'seeker', '1990-07-31'), (78, 78, 1, 'beater', '1992-01-01'), (79, 79, 1, 'seeker', '1991-04-27'), (81, 81, 1, 'seeker', '1998-03-29'), (82, 82, 1, 'chaser', '1991-08-26'), (83, 83, 1, 'keeper', '1992-04-17'), (85, 85, 1, 'beater', '1990-09-05'), (86, 86, 1, 'seeker', '1997-06-22'), (87, 87, 1, 'chaser', '1999-04-08'), (88, 88, 3, 'beater', '1991-07-08'), (89, 89, 3, 'chaser', '1996-09-25'), (90, 90, 1, 'keeper', '1993-01-04'), (91, 91, 4, 'beater', '1993-11-04'), (92, 92, 2, 'beater', '1997-12-14');
/* 2024-11-07 17:14:39 [12 ms] */ 
SELECT lastname, firstname, role, name
FROM player
INNER JOIN wizard ON wizard.id=player.wizard_id
INNER JOIN team ON team.id=player.team_id
ORDER BY name ASC, role ASC, lastname ASC, firstname ASC LIMIT 100;
/* 2024-11-07 17:15:20 [10 ms] */ 
SELECT firstname, lastname
FROM player
INNER JOIN wizard ON wizard.id=player.wizard_id
INNER JOIN team ON team.id=player.team_id
WHERE role='seeker' ORDER BY lastname ASC, firstname ASC LIMIT 100;
/* 2024-11-07 17:21:45 [9 ms] */ 
SELECT lastname, firstname, role, name
FROM player
INNER JOIN wizard ON wizard.id=player.wizard_id
INNER JOIN team ON team.id=player.team_id
ORDER BY name ASC, role ASC, lastname ASC, firstname ASC LIMIT 100;
/* 2024-11-07 17:23:51 [53 ms] */ 
DROP DATABASE IF EXISTS wild_db_quests_advanced;
/* 2024-11-07 17:23:51 [21 ms] */ 
CREATE DATABASE wild_db_quests_advanced;
/* 2024-11-07 17:23:52 [4 ms] */ 
USE wild_db_quests_advanced;
/* 2024-11-07 17:23:53 [40 ms] */ 
CREATE TABLE wizard(
  id INT NOT NULL AUTO_INCREMENT,
  firstname VARCHAR(100) NOT NULL,
  lastname VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);
/* 2024-11-07 17:23:54 [37 ms] */ 
CREATE TABLE team(
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);
/* 2024-11-07 17:23:54 [71 ms] */ 
CREATE TABLE player(
  id INT NOT NULL AUTO_INCREMENT,
  wizard_id INT NOT NULL,
  team_id INT NULL,
  role VARCHAR(100) NOT NULL,
  enrollment_date DATE NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT fk_player_wizard FOREIGN KEY (wizard_id) REFERENCES wizard(id),
  CONSTRAINT fk_player_team FOREIGN KEY (team_id) REFERENCES team(id)
);
/* 2024-11-07 17:23:56 [20 ms] */ 
INSERT INTO team
  (id, name)
  VALUES
  (1, 'Gryffindor'), (2, 'Ravenclaw'), (3, 'Slytherin'), (4, 'Hufflepuff');
/* 2024-11-07 17:23:57 [34 ms] */ 
INSERT INTO wizard
  (id, firstname, lastname)
  VALUES
  (1, 'Hannah', 'Abbott'), (2, 'Katie', 'Bell'), (3, 'Cuthbert', 'Binns'), (4, 'Phineas', 'Nigellus'), (5, 'Regulus', 'Black'), (6, 'Sirius', 'Black'), (7, 'Amelia', 'Bones'), (8, 'Susan', 'Bones'), (9, 'Terry', 'Boot'), (10, 'Lavender', 'Brown'), (11, 'Millicent', 'Bulstrode'), (12, 'Cho', 'Chang'), (13, 'Penelope', 'Clearwater'), (14, 'Michael', 'Corner'), (15, 'Crabbe', ''), (16, 'Vincent', 'Crabbe'), (17, 'Colin', 'Creevey'), (18, 'Dennis', 'Creevey'), (19, 'Cedric', 'Diggory'), (20, 'Aberforth', 'Dumbledore'), (21, 'Albus', 'Dumbledore'), (22, 'Marietta', 'Edgecombe'), (23, 'Justin', 'Finch-Fletchley'), (24, 'Seamus', 'Finnigan'), (25, 'Marcus', 'Flint'), (26, 'Filius', 'Flitwick'), (27, 'Anthony', 'Goldstein'), (28, 'Gregory', 'Goyle'), (29, 'Hermione', 'Granger'), (30, 'Godric', 'Gryffindor'), (31, 'Rubeus', 'Hagrid'), (32, 'Helga', 'Hufflepuff'), (33, 'Angelina', 'Johnson'), (34, 'Lee', 'Jordan'), (35, 'Bellatrix', 'Lestrange'), (36, 'Rabastan', 'Lestrange'), (37, 'Rodolphus', 'Lestrange'), (38, 'Gilderoy', 'Lockhart'), (39, 'Alice', 'Longbottom'), (40, 'Frank', 'Longbottom'), (41, 'Augusta', 'Longbottom'), (42, 'Neville', 'Longbottom'), (43, 'Luna', 'Lovegood'), (44, 'Xenophilius', 'Lovegood'), (45, 'Remus', 'Lupin'), (46, 'Draco', 'Malfoy'), (47, 'Lucius', 'Malfoy'), (48, 'Narcissa', 'Malfoy'), (49, 'Minerva', 'McGonagall'), (50, 'Theodore', 'Nott'), (51, 'Garrick', 'Ollivander'), (52, 'Pansy', 'Parkinson'), (53, 'Padma', 'Patil'), (54, 'Parvati', 'Patil'), (55, 'Peter', 'Pettigrew'), (56, 'Harry', 'Potter'), (57, 'James', 'Potter'), (58, 'Lily', 'J.'), (59, 'Quirinus', 'Quirrell'), (60, 'Helena', 'Ravenclaw'), (61, 'Rowena', 'Ravenclaw'), (62, 'Tom', 'Riddle'), (63, 'Demelza', 'Robins'), (64, 'Newton', 'Scamander'), (65, 'Horace', 'Slughorn'), (66, 'Salazar', 'Slytherin'), (67, 'Hepzibah', 'Smith'), (68, 'Zacharias', 'Smith'), (69, 'Severus', 'Snape'), (70, 'Alicia', 'Spinnet'), (71, 'Pomona', 'Sprout'), (72, 'Dean', 'Thomas'), (73, 'Andromeda', 'Tonks'), (74, 'Nymphadora', 'Tonks'), (75, 'Sybill', 'Trelawney'), (76, 'Dolores', 'Umbridge'), (77, 'Romilda', 'Vane'), (78, 'Arthur', 'Weasley'), (79, 'William', 'Weasley'), (80, 'Charles', 'Weasley'), (81, 'Fred', 'Weasley'), (82, 'George', 'Weasley'), (83, 'Ginevra', 'Weasley'), (84, 'Molly', 'Weasley'), (85, 'Percy', 'Weasley'), (86, 'Ronald', 'Weasley'), (87, 'Oliver', 'Wood'), (88, 'Blaise', 'Zabini'), (89, 'Bloody', 'Baron'), (90, 'Cadogan', ''), (91, 'Fat', 'Friar'), (92, 'Myrtle', 'Warren');
/* 2024-11-07 17:23:58 [36 ms] */ 
INSERT INTO player
  (id, wizard_id, team_id, role, enrollment_date)
  VALUES
  (1, 1, 4, 'beater', '1995-10-09'), (2, 2, 1, 'chaser', '1995-08-17'), (3, 3, 1, 'seeker', '1994-12-03'), (4, 4, 3, 'chaser', '1995-03-24'), (5, 5, 3, 'keeper', '1997-07-16'), (6, 6, 1, 'beater', '1994-01-10'), (7, 7, 4, 'chaser', '1999-01-21'), (8, 8, 4, 'keeper', '1991-10-20'), (10, 10, 1, 'beater', '1991-08-03'), (11, 11, 3, 'beater', '1996-10-04'), (12, 12, 2, 'chaser', '1992-01-27'), (13, 13, 2, 'beater', '1991-01-11'), (14, 14, 2, 'seeker', '1995-08-17'), (16, 16, 3, 'beater', '1992-11-27'), (17, 17, 1, 'seeker', '1993-07-07'), (18, 18, 1, 'keeper', '1991-05-01'), (19, 19, 4, 'keeper', '1997-11-02'), (20, 20, 1, 'keeper', '1995-04-24'), (21, 21, 1, 'chaser', '1991-03-12'), (22, 22, 2, 'chaser', '1990-07-05'), (23, 23, 4, 'beater', '1995-01-06'), (24, 24, 1, 'beater', '1997-02-08'), (25, 25, 3, 'beater', '1996-12-16'), (26, 26, 2, 'chaser', '1997-02-07'), (27, 27, 2, 'chaser', '1999-07-31'), (28, 28, 3, 'seeker', '1994-05-13'), (29, 29, 1, 'chaser', '1997-08-14'), (30, 30, 1, 'seeker', '1993-08-30'), (31, 31, 1, 'beater', '1994-11-16'), (32, 32, 4, 'seeker', '1992-08-14'), (33, 33, 1, 'keeper', '1995-12-02'), (34, 34, 1, 'chaser', '1996-01-31'), (35, 35, 3, 'chaser', '1992-03-21'), (36, 36, 3, 'seeker', '1997-10-30'), (37, 37, 3, 'chaser', '1991-04-27'), (38, 38, 2, 'chaser', '1998-04-05'), (39, 39, 1, 'beater', '1992-02-17'), (40, 40, 1, 'chaser', '1995-10-15'), (41, 41, 1, 'chaser', '1999-10-25'), (42, 42, 1, 'chaser', '1998-05-06'), (43, 43, 2, 'chaser', '1998-03-01'), (44, 44, 2, 'chaser', '1991-03-11'), (46, 46, 3, 'chaser', '1993-11-02'), (47, 47, 3, 'chaser', '1992-03-12'), (48, 48, 3, 'seeker', '1993-03-17'), (49, 49, 1, 'beater', '1992-07-14'), (50, 50, 3, 'chaser', '1996-12-02'), (51, 51, 2, 'chaser', '1995-06-25'), (52, 52, 3, 'beater', '1991-12-14'), (55, 55, 1, 'chaser', '1991-05-14'), (56, 56, 1, 'beater', '1997-03-05'), (57, 57, 1, 'beater', '1996-12-07'), (58, 58, 1, 'chaser', '1999-02-23'), (59, 59, 2, 'beater', '1995-09-23'), (60, 60, 2, 'beater', '1992-04-12'), (61, 61, 2, 'seeker', '1992-10-09'), (62, 62, 3, 'chaser', '1990-02-27'), (64, 64, 4, 'chaser', '1999-01-12'), (66, 66, 3, 'seeker', '1991-02-23'), (67, 67, 4, 'beater', '1996-07-18'), (68, 68, 4, 'keeper', '1993-10-01'), (69, 69, 3, 'beater', '1997-03-06'), (70, 70, 1, 'chaser', '1995-11-08'), (71, 71, 4, 'beater', '1998-06-12'), (72, 72, 1, 'beater', '1997-11-23'), (73, 73, 3, 'chaser', '1994-01-28'), (74, 74, 4, 'beater', '1999-11-25'), (75, 75, 2, 'seeker', '1991-12-28'), (76, 76, 3, 'seeker', '1993-10-23'), (77, 77, 1, 'seeker', '1990-07-31'), (78, 78, 1, 'beater', '1992-01-01'), (79, 79, 1, 'seeker', '1991-04-27'), (81, 81, 1, 'seeker', '1998-03-29'), (82, 82, 1, 'chaser', '1991-08-26'), (83, 83, 1, 'keeper', '1992-04-17'), (85, 85, 1, 'beater', '1990-09-05'), (86, 86, 1, 'seeker', '1997-06-22'), (87, 87, 1, 'chaser', '1999-04-08'), (88, 88, 3, 'beater', '1991-07-08'), (89, 89, 3, 'chaser', '1996-09-25'), (90, 90, 1, 'keeper', '1993-01-04'), (91, 91, 4, 'beater', '1993-11-04'), (92, 92, 2, 'beater', '1997-12-14');
/* 2024-11-07 17:24:02 [6 ms] */ 
SELECT lastname, firstname, role, name
FROM player
INNER JOIN wizard ON wizard.id=player.wizard_id
INNER JOIN team ON team.id=player.team_id
ORDER BY name ASC, role ASC, lastname ASC, firstname ASC LIMIT 100;
/* 2024-11-08 09:34:01 [28 ms] */ 
SELECT 
  team.name, COUNT(*) AS effectif
FROM 
  player
INNER JOIN 
  wizard ON wizard.id=player.wizard_id
INNER JOIN 
  team ON team.id=player.team_id
GROUP BY
  team_id
ORDER BY effectif DESC LIMIT 100;
/* 2024-11-08 09:36:33 [7 ms] */ 
SELECT 
COUNT(*) AS effectif
FROM 
  player
INNER JOIN 
  wizard ON wizard.id=player.wizard_id
INNER JOIN 
  team ON team.id=player.team_id LIMIT 100;
/* 2024-11-08 09:36:49 [8 ms] */ 
SELECT 
  team.name, COUNT(*) AS effectif
FROM 
  player
INNER JOIN 
  wizard ON wizard.id=player.wizard_id
INNER JOIN 
  team ON team.id=player.team_id
GROUP BY
  team_id
ORDER BY effectif DESC LIMIT 100;
/* 2024-11-08 09:42:20 [8 ms] */ 
SELECT 
  team.name, COUNT(*) AS effectif
FROM 
  player
INNER JOIN 
  wizard ON wizard.id=player.wizard_id
INNER JOIN 
  team ON team.id=player.team_id
GROUP BY
  team_id
HAVING
  effectif > 14
ORDER BY effectif DESC LIMIT 100;
/* 2024-11-08 09:42:44 [9 ms] */ 
SELECT 
  team.name, COUNT(*) AS effectif
FROM 
  player
INNER JOIN 
  wizard ON wizard.id=player.wizard_id
INNER JOIN 
  team ON team.id=player.team_id
GROUP BY
  team_id
HAVING
  effectif > 14
ORDER BY team.name ASC LIMIT 100;
/* 2024-11-08 09:52:27 [26 ms] */ 
SELECT CONCAT(wizard.firstname, ' ', wizard.lastname) AS fullname, DAYOFWEEK(enrollment_date)
FROM player
INNER JOIN 
  wizard ON wizard.id=player.wizard_id
INNER JOIN 
  team ON team.id=player.team_id
WHERE
  DAYOFWEEK(enrollment_date) = 2 AND team.name = 'Gryffindor' LIMIT 100;
/* 2024-11-08 09:55:19 [11 ms] */ 
SELECT CONCAT(wizard.firstname, ' ', wizard.lastname) AS fullname, DAYOFWEEK(enrollment_date)
FROM player
INNER JOIN 
  wizard ON wizard.id=player.wizard_id
INNER JOIN 
  team ON team.id=player.team_id
WHERE
  DAYOFWEEK(enrollment_date) = 2 AND team.name = 'Gryffindor'
ORDER BY enrollment_date ASC LIMIT 100;
/* 2024-11-08 09:55:33 [8 ms] */ 
SELECT CONCAT(wizard.firstname, ' ', wizard.lastname) AS fullname
FROM player
INNER JOIN 
  wizard ON wizard.id=player.wizard_id
INNER JOIN 
  team ON team.id=player.team_id
WHERE
  DAYOFWEEK(enrollment_date) = 2 AND team.name = 'Gryffindor'
ORDER BY enrollment_date ASC LIMIT 100;
/* 2024-11-08 09:56:00 [8 ms] */ 
SELECT CONCAT(wizard.firstname, ' ', wizard.lastname) AS fullname, enrollment_date
FROM player
INNER JOIN 
  wizard ON wizard.id=player.wizard_id
INNER JOIN 
  team ON team.id=player.team_id
WHERE
  DAYOFWEEK(enrollment_date) = 2 AND team.name = 'Gryffindor'
ORDER BY enrollment_date ASC LIMIT 100;
/* 2024-11-08 09:56:35 [9 ms] */ 
SELECT CONCAT(wizard.firstname, ' ', wizard.lastname) AS fullname
FROM player
INNER JOIN 
  wizard ON wizard.id=player.wizard_id
INNER JOIN 
  team ON team.id=player.team_id
WHERE
  DAYOFWEEK(enrollment_date) = 2 AND team.name = 'Gryffindor'
ORDER BY enrollment_date ASC LIMIT 100;
/* 2024-11-08 09:57:23 [12 ms] */ 
SELECT 
  team.name, COUNT(*) AS effectif
FROM 
  player
INNER JOIN 
  wizard ON wizard.id=player.wizard_id
INNER JOIN 
  team ON team.id=player.team_id
GROUP BY
  team_id
HAVING
  effectif > 14
ORDER BY team.name ASC LIMIT 100;
/* 2024-11-08 09:59:48 [9 ms] */ 
SELECT 
  team.name
FROM 
  player
INNER JOIN 
  wizard ON wizard.id=player.wizard_id
INNER JOIN 
  team ON team.id=player.team_id
GROUP BY
  team_id
HAVING
   COUNT(*) > 14
ORDER BY team.name ASC LIMIT 100;
/* 2024-11-08 10:00:48 [7 ms] */ 
SELECT 
  team.name, COUNT(*) AS effectif
FROM 
  player
INNER JOIN 
  wizard ON wizard.id=player.wizard_id
INNER JOIN 
  team ON team.id=player.team_id
GROUP BY
  team_id
HAVING
  effectif > 14
ORDER BY team.name ASC LIMIT 100;
/* 2024-11-08 10:01:27 [7 ms] */ 
SELECT 
team.name
FROM 
player
INNER JOIN 
wizard ON wizard.id=player.wizard_id
INNER JOIN 
team ON team.id=player.team_id
GROUP BY
team_id
HAVING
 COUNT(*) > 14
ORDER BY team.name ASC LIMIT 100;
