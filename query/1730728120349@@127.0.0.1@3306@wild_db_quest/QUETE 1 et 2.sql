-- Active: 1730728120349@@127.0.0.1@3306@wild_db_quest
-- Active: 1730728120349@@127.0.0.1@3306
CREATE DATABASE wild_db_quest;
USE wild_db_quest;
CREATE TABLE wizard (
  id INT NOT NULL AUTO_INCREMENT,
  firstname VARCHAR(100) NOT NULL,
  lastname VARCHAR(100) NOT NULL,
  birthday DATE DEFAULT NULL,
  birth_place VARCHAR(255) DEFAULT NULL,
  biography TEXT DEFAULT NULL,
  PRIMARY KEY (id)
);
ALTER TABLE wizard
ADD is_muggle BOOL;
ALTER TABLE wizard
MODIFY is_muggle BOOL NOT NULL;
CREATE TABLE school (
    id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name VARCHAR(100) NOT NULL,
    capacity INTEGER NULL,
    country VARCHAR(255) NOT NULL
);

SHOW TABLES;
DESCRIBE wizard;
DESCRIBE school;

/**** 02 - Récupérer des informations avec SELECT ****/

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
/*Voici un exemple un peu plus complexe, permettant de récupérer tous les sorciers dont le nom commence par “Weas” et qui sont nés entre les 1er janvier 1970 et 2000 */
SELECT firstname, birthday 
FROM wizard
WHERE 
lastname LIKE 'Weas%' AND
birthday BETWEEN '1970-01-01' AND '2000-01-01'
LIMIT 2;

/*tous les sorciers, classés par ordre alphabétique de nom, PUIS du plus jeune au plus vieux pour les membres d’une même famille. Note également que tu n’es pas obligé d’afficher les champs servant à trier (ici tu ne récupères pas la date de naissance, mais elle te sert tout de même à trier les résultats)*/
SELECT firstname, lastname FROM wizard ORDER BY lastname ASC, birthday DESC;

/* trois plus jeunes membres de la famille Weasley*/
SELECT * FROM wizard WHERE lastname='Weasley' ORDER BY birthday DESC LIMIT 3;
/* CHALLENGE */
SELECT * FROM wizard WHERE birthday BETWEEN '1975-01-01' AND '1985-12-31' AND is_muggle=0;
SELECT firstname FROM wizard WHERE firstname LIKE 'H%';
SELECT firstname, lastname FROM wizard WHERE lastname='potter' ORDER BY firstname;
SELECT firstname, lastname, birthday FROM wizard WHERE is_muggle=0 ORDER BY birthday ASC LIMIT 1;ss