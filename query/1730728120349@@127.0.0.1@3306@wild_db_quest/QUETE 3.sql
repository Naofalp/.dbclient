-- Active: 1730728120349@@127.0.0.1@3306@wild_db_quest
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

UPDATE school
SET country = 'Sweden'
WHERE name = 'Durmstrang Institute';

UPDATE school
SET capacity = 150
WHERE name = 'Koldovstoretz';

DELETE FROM school
WHERE name LIKE '%magic%';

SELECT * FROM school;