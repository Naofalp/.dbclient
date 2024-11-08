-- Active: 1730728120349@@127.0.0.1@3306@wild_db_quest
ALTER TABLE wizard 
ADD school_id INT NOT NULL;

/*Relier le champ school_id à l'id dans school en tant que clé etrangere APRES avoir defini les school_id sinon ERROR*/
/* ALTER TABLE wizard
  ADD CONSTRAINT fk_wizard_school 
  FOREIGN KEY (school_id)
  REFERENCES school(id); */

/*Verifier*/
SELECT * FROM wizard WHERE school_id NOT IN (SELECT id FROM school);