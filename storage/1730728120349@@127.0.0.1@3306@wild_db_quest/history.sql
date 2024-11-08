/* 2024-11-04 17:23:28 [7 ms] */ 
SELECT * FROM wizard WHERE lastname='Weasley' ORDER BY birthday DESC LIMIT 0,3;
/* 2024-11-04 17:23:37 [4 ms] */ 
SELECT * FROM wizard WHERE lastname='Weasley' ORDER BY birthday DESC LIMIT 3;
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
/* 2024-11-07 10:24:07 [24 ms] */ 
SHOW TABLES;
/* 2024-11-07 10:24:17 [7 ms] */ 
DESCRIBE wizard;
/* 2024-11-07 10:24:25 [6 ms] */ 
DESCRIBE school;
/* 2024-11-07 10:24:41 [5 ms] */ 
DESCRIBE wizard;
