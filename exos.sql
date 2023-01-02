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
SELECT * FROM `languages`;

/* Exercice 1 */
SELECT `language`, `version`
FROM `languages` 
WHERE `language`= 'PHP'; 