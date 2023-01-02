/* SQL - Création de bases de données */
-- commentaire --

/* Exercice 1 */
CREATE DATABASE webDevelopment CHARACTER SET utf8;

/* Exercice 2 */
CREATE TABLE languages (
    `id` int NOT NULL AUTO_INCREMENT,
    `language` varchar(20),
    PRIMARY KEY (`id`)
);

/* Exercice 3 */
CREATE TABLE frameworks (
    `id` int NOT NULL AUTO_INCREMENT,
    `name` varchar(20),
    PRIMARY KEY (`id`)
);

/* Exercice 4 */
ALTER TABLE languages
ADD `version` varchar(10);

/* Exercice 5 */
ALTER TABLE frameworks
ADD `version` varchar(10);

/* SQL - Partie 2 : Insertion de données */

/* Exercice 1 */
INSERT INTO languages (`language`, `version`)
VALUES  ("JavaScript", "5"),
        ("PHP", "5.2"),
        ("PHP", "5"),
        ("HTML", "4"),
        ("HTML", "5"),
        ("JavaScript", "6"),
        ("JavaScript", "7"),
        ("JavaScript", "8"),
        ("PHP", "7");

/* Exercice 2 */
INSERT INTO frameworks (`name`, `version`)
VALUES  ("Symfony", "5.2"),
        ("Symfony", "6"),
        ("Bootstrap", "3.3"),
        ("Bootstrap", "5.2"); 

/* SQL - Partie 3 : Sélection de données */

/* Exercice 1 */
SELECT * FROM languages;

/* Exercice 2 */
SELECT `language`, `version`
FROM languages 
WHERE `language` = 'PHP';

/* Exercice 3 */
SELECT `language`, `version`
FROM languages 
WHERE `language` = 'PHP' OR `language` = 'JavaScript'; 

/* Exercice 4 */
SELECT * FROM languages
WHERE `id` = 3 OR `id` = 5 OR `id` = 7;

/* Exercice 5 */
SELECT `language`, `version`
FROM languages 
WHERE `language` = 'JavaScript'
LIMIT 0, 2;
/* LIMIT prend deux valeurs, l'offset et la limite:
    - l'offset est le nombre de rangs ignorés
    - la limite est le nombre de champos affichés */

/* Exercice 6 */
SELECT * FROM languages
WHERE NOT `language` = 'PHP';
-- ou --
SELECT * FROM languages
WHERE `language` != 'PHP';
-- ou --
SELECT * FROM languages
WHERE `language` <> 'PHP';

/* Exercice 7 */
SELECT * FROM languages
ORDER BY `language`, `version` DESC;
-- DESC ici permet d'afficher les versions par ordre décroissant --

/* SQL - Partie 4 : Suppression et modification de données */
/* Exercice 1 */
DELETE FROM languages
WHERE `language` = 'HTML';

/* Exercice 2 */
UPDATE frameworks
SET `name` = "Symfony2"
WHERE `name` = "Symfony";

/* Exercice 3 */
UPDATE languages
SET `version` = "5.1"
WHERE `language` = "JavaScript" AND `version` = "5";

/* SQL - Partie 5 : Les jointures */

/* Exercice 1 */
SELECT * 
FROM `languages`
LEFT JOIN `frameworks`
ON `languages`.`id` = `frameworks`.`language_id`; 

/* Exercice 2 */
SELECT *
FROM `frameworks`
INNER JOIN `languages`
ON `languages`.`id` = `frameworks`.`language_id`;

-- La requête JOIN seule donne le résultat de la requête INNER JOIN par défaut --

SELECT `name`, `frameworks`.`version` AS `framework_version`, `language`, `languages`.`version` AS `language_version`
FROM `frameworks`
INNER JOIN `languages`
ON `languages`.`id` = `frameworks`.`language_id`;
-- AS permet de créer des alias afin de clarifier la lecture --

/* Exercice 3 */
SELECT `languages`.`language`, `languages`.`version`, COUNT(`frameworks`.`id`)
FROM `languages`
INNER JOIN `frameworks`
ON `languages`.`id` = `frameworks`.`language_id`
GROUP BY `frameworks`.`language_id`; 