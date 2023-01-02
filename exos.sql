/* Partie 1 */
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