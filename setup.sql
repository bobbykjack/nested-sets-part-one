START TRANSACTION;

CREATE DATABASE IF NOT EXISTS nested_sets;

USE nested_sets;


DROP TABLE IF EXISTS continent;

CREATE TABLE `continent` (
    `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255)
);

INSERT INTO `continent` (`id`, `name`) VALUES
(1, 'Europe'),
(2, 'America');


DROP TABLE IF EXISTS country;

CREATE TABLE `country` (
    `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255),
    `continent_id` INT(10) NOT NULL
);

INSERT INTO `country` (`id`, `name`, `continent_id`) VALUES
(1, 'France', 1),
(2, 'United Kingdom', 1),
(3, 'Sweden', 1),
(4, 'Canada', 2);


DROP TABLE IF EXISTS place;

CREATE TABLE `place` (
    `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255),
    `parent_place` INT(10)
);

INSERT INTO `place` (`id`, `name`, `parent_place`) VALUES
(1, 'Europe', NULL),
(2, 'France', 1),
(3, 'United Kingdom', 1),
(4, 'England', 3),
(5, 'Wales', 3),
(6, 'Sweden', 1);


DROP TABLE IF EXISTS location;

CREATE TABLE `location` (
    `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255),
    `lft` INT(10) NOT NULL,
    `rgt` INT(10) NOT NULL
);

INSERT INTO `location` (`id`, `name`, `lft`, `rgt`) VALUES
(1, 'Europe', 1, 14),
(2, 'France', 2, 3),
(3, 'United Kingdom', 4, 11),
(4, 'England', 5, 6),
(5, 'Wales', 7, 8),
(6, 'Scotland', 9, 10),
(7, 'Sweden', 12, 13);


COMMIT;
