-- Active: 1730728120349@@127.0.0.1@3306@wild_db_quests_advanced
/**** JE VAIS ANNULER CE QUI A ETAIT FAIT EN 1 POUR RECREER LA BDD, ANNULE CELLE LA AUSSI ***/

DROP DATABASE IF EXISTS wild_db_quests_advanced;
CREATE DATABASE wild_db_quests_advanced;

USE wild_db_quests_advanced;

CREATE TABLE school(
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  capacity INT,
  PRIMARY KEY (id)
);

CREATE TABLE wizard(
  id INT NOT NULL AUTO_INCREMENT,
  firstname VARCHAR(100) NOT NULL,
  lastname VARCHAR(100) NOT NULL,
  school_id INT,
  PRIMARY KEY (id),
  CONSTRAINT fk_wizard_school FOREIGN KEY (school_id) REFERENCES school(id)
);

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

/* Compter le nom d'etudiants par ecoles grace à COUNT et GROUP BY par id qui devient name */ 
SELECT
  s.name, COUNT(*) as nb_student /* on renomme COUNT pour que ce soit plus simple*/
FROM
  wizard w
INNER JOIN
  school AS s ON s.id=w.school_id
GROUP BY
  s.id
HAVING    /* Meme fonctionnement de WHERE mais WHERE s'applique sur les tuples, HAVING sur le regroupement donc APRES le GROUP BY*/
  nb_student > 3; 

/* Reuni les champs selectionné */
SELECT CONCAT(firstname, ' ', lastname) AS fullname FROM wizard;
