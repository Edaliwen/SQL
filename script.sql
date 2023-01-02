

/* Exercice 1 :
Listez l’ensemble des jeux enregistré dans la table « games ». */
SELECT * FROM `games`;

/* Exercice 2 :
Listez l’ensemble de jeux sans les doublons.*/
SELECT DISTINCT `g_name`
FROM games;

/* Exercice 3 :
Affichez le nom, le mode de jeu, la date de sortie et le pegi de tous les jeux triés par ordre
alphabétiques. */
SELECT `g_name`, `g_mode`, `g_published_at`, `g_pegi`
FROM games
ORDER BY `g_name` ASC;

/* Exercice 4 :
Affichez le nom, le mode de jeu, la date de sortie et le pegi des 10 jeux les plus récents. */
SELECT `g_name`, `g_mode`, `g_published_at`, `g_pegi`
FROM games
ORDER BY `g_published_at` DESC
LIMIT 0, 10;

/* Exercice 5 :
Affichez le nom et le mode de jeu des jeux qui se jouent uniquement dans un seul mode */
SELECT `g_name`, `g_mode`
FROM games
WHERE `g_mode` NOT LIKE '%/%';

/* Exercice 6 :
Affichez le nom et la date de sortie des jeux sortie entre 2015 et 2020 triés par année */
SELECT `g_name`, `g_published_at`
FROM games
WHERE `g_published_at` BETWEEN '2015-01-01' AND '2020-12-31'
ORDER BY `g_published_at` ASC;

/* Exercice 7 :
Affichez le nom et le mode de jeu des jeux qui peuvent se jouer en mode solo */
SELECT `g_name`, `g_mode`
FROM games
WHERE `g_mode` LIKE '%solo%';

/* Exercice 8 :
Affichez les informations des différents jeux "witcher" disponibles. */
SELECT *
FROM `games`
WHERE `g_name` LIKE '%witcher%';

/* Exercice 9 :
Affichez les informations de tous les jeux sauf les jeux "Halo". */
SELECT *
FROM `games`
WHERE `g_name` NOT LIKE '%halo%';

/* Exercice 10 :
Lister les jeux sortis en 2012, 2016 et 2020. */
SELECT *
FROM games
WHERE `g_published_at` LIKE '%2015%' OR `g_published_at` LIKE '%2016%' OR `g_published_at` LIKE '%2020%';  

/* Exercice 11 :
Affichez le nom de jeu et le studio de tous les jeux. Utiliser une jointure naturelle. */
SELECT `g_name`, `s_name`
FROM games
JOIN studios
ON `games`.`s_id` = `studios`.`s_id`;

/* Exercice 12 :
Affichez le nom de jeu, le studio, la nationalité de la société des jeux disponibles. Utiliser une
jointure avec join */
SELECT `g_name`, `s_name`, `s_nationality`
FROM games
JOIN studios
ON `games`.`s_id` = `studios`.`s_id`;

/* Exercice 13 :
Affichez le nom et le mode de jeu des jeux console grand public triés par pegi croissant */
SELECT `g_name`, `g_mode`, `p_name`, `g_pegi`
FROM games
JOIN games_platforms
ON games.`g_id` = games_platforms.`g_id`
JOIN platforms
ON platforms.`p_id` = games_platforms.`p_id`
WHERE `p_name` NOT LIKE 'PC' AND `p_name` NOT LIKE 'MAC' AND `g_pegi` < 16
ORDER BY `g_pegi` ASC;


/* Exercice 14 :
Affichez le nom de jeu et les plateformes de tous les jeux triés par ordre alphabétique */
SELECT `g_name`,

/* Exercice 15 :
Calculez le nombre total de jeux. */

/* Exercice 16 :
Affichez le nombre de jeux uniques. */

/* Exercice 17 :
Calculez le nombre de jeux par studio. */

/* Exercice 18 :
Calculez le nombre de jeux par studio et par plateforme */

/* Exercice 19 :
Affichez les jeux disponibles sur au moins 4 plateformes */

/* Exercice 20 :
Calculez le nombre moyen de jeux par plateforme */
