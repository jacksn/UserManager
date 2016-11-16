CREATE DATABASE IF NOT EXISTS `test`;

USE `test`;

DROP TABLE IF EXISTS `users`;

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `isAdmin` bit(1) NOT NULL DEFAULT b'0',
  `createdDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

insert into users (id, name, age, isAdmin, createdDate) values (1, 'Joseph Woods', 28, true, '2016-10-17');
insert into users (id, name, age, isAdmin, createdDate) values (2, 'Louise Woods', 45, false, '2016-08-05');
insert into users (id, name, age, isAdmin, createdDate) values (3, 'Melissa Grant', 41, true, '2016-01-09');
insert into users (id, name, age, isAdmin, createdDate) values (4, 'Roger Wagner', 24, true, '2016-03-05');
insert into users (id, name, age, isAdmin, createdDate) values (5, 'Richard Porter', 31, false, '2016-04-23');
insert into users (id, name, age, isAdmin, createdDate) values (6, 'Laura Simmons', 44, false, '2016-09-02');
insert into users (id, name, age, isAdmin, createdDate) values (7, 'Alice Morris', 39, false, '2016-07-15');
insert into users (id, name, age, isAdmin, createdDate) values (8, 'Robin Morales', 30, false, '2016-07-21');
insert into users (id, name, age, isAdmin, createdDate) values (9, 'Sandra Butler', 29, false, '2016-11-06');
insert into users (id, name, age, isAdmin, createdDate) values (10, 'Andrew Castillo', 21, false, '2016-10-27');
insert into users (id, name, age, isAdmin, createdDate) values (11, 'Joyce Ward', 41, true, '2016-06-26');
insert into users (id, name, age, isAdmin, createdDate) values (12, 'Debra Gonzalez', 39, true, '2016-07-13');
insert into users (id, name, age, isAdmin, createdDate) values (13, 'Doris George', 24, true, '2016-10-20');
insert into users (id, name, age, isAdmin, createdDate) values (14, 'Fred White', 32, true, '2016-04-21');
insert into users (id, name, age, isAdmin, createdDate) values (15, 'Jack Warren', 19, true, '2016-11-01');
insert into users (id, name, age, isAdmin, createdDate) values (16, 'Brian Howell', 40, false, '2016-03-13');
insert into users (id, name, age, isAdmin, createdDate) values (17, 'Edward Nichols', 28, true, '2016-08-26');
insert into users (id, name, age, isAdmin, createdDate) values (18, 'Debra Martin', 30, false, '2016-06-26');
insert into users (id, name, age, isAdmin, createdDate) values (19, 'Debra Franklin', 44, false, '2015-11-27');
insert into users (id, name, age, isAdmin, createdDate) values (20, 'Kelly Gonzales', 23, true, '2016-08-10');
insert into users (id, name, age, isAdmin, createdDate) values (21, 'Bobby Fisher', 38, false, '2016-06-30');
insert into users (id, name, age, isAdmin, createdDate) values (22, 'Fred Hamilton', 24, true, '2016-05-11');
insert into users (id, name, age, isAdmin, createdDate) values (23, 'Phyllis Lawrence', 45, false, '2016-10-05');
insert into users (id, name, age, isAdmin, createdDate) values (24, 'Gerald Russell', 28, false, '2016-09-01');
insert into users (id, name, age, isAdmin, createdDate) values (25, 'Kenneth Cook', 29, false, '2016-04-23');
insert into users (id, name, age, isAdmin, createdDate) values (26, 'Jerry Gutierrez', 39, false, '2016-02-01');
insert into users (id, name, age, isAdmin, createdDate) values (27, 'Henry Mccoy', 45, false, '2016-02-09');
insert into users (id, name, age, isAdmin, createdDate) values (28, 'David Boyd', 32, true, '2015-12-03');
insert into users (id, name, age, isAdmin, createdDate) values (29, 'Fred Owens', 41, true, '2016-03-22');
insert into users (id, name, age, isAdmin, createdDate) values (30, 'Wanda Mendoza', 31, false, '2016-08-31');
insert into users (id, name, age, isAdmin, createdDate) values (31, 'Kathleen Weaver', 28, false, '2016-05-02');
insert into users (id, name, age, isAdmin, createdDate) values (32, 'Joe Weaver', 33, false, '2016-03-16');
insert into users (id, name, age, isAdmin, createdDate) values (33, 'Ryan Bowman', 43, true, '2016-11-04');
insert into users (id, name, age, isAdmin, createdDate) values (34, 'Dennis Butler', 43, false, '2016-07-26');
insert into users (id, name, age, isAdmin, createdDate) values (35, 'Ruby Alvarez', 30, false, '2016-10-08');
insert into users (id, name, age, isAdmin, createdDate) values (36, 'Michael Hamilton', 45, false, '2015-11-26');
insert into users (id, name, age, isAdmin, createdDate) values (37, 'Donald Holmes', 34, true, '2016-04-14');
insert into users (id, name, age, isAdmin, createdDate) values (38, 'Chris Riley', 31, true, '2016-06-09');
insert into users (id, name, age, isAdmin, createdDate) values (39, 'Shirley Hanson', 19, false, '2015-11-27');
insert into users (id, name, age, isAdmin, createdDate) values (40, 'Joyce Parker', 29, false, '2016-06-28');
insert into users (id, name, age, isAdmin, createdDate) values (41, 'Jane Garrett', 42, true, '2016-09-13');
insert into users (id, name, age, isAdmin, createdDate) values (42, 'Heather Hart', 21, false, '2016-05-04');
insert into users (id, name, age, isAdmin, createdDate) values (43, 'Russell Woods', 25, true, '2015-11-30');
insert into users (id, name, age, isAdmin, createdDate) values (44, 'Sharon Stanley', 18, false, '2016-04-06');
insert into users (id, name, age, isAdmin, createdDate) values (45, 'Jack Boyd', 44, false, '2016-04-21');
insert into users (id, name, age, isAdmin, createdDate) values (46, 'Christopher Olson', 43, false, '2016-07-20');
insert into users (id, name, age, isAdmin, createdDate) values (47, 'Bonnie Boyd', 32, true, '2016-08-31');
insert into users (id, name, age, isAdmin, createdDate) values (48, 'Edward Richardson', 42, true, '2016-08-15');
insert into users (id, name, age, isAdmin, createdDate) values (49, 'Shirley Hernandez', 42, true, '2016-05-13');
insert into users (id, name, age, isAdmin, createdDate) values (50, 'Margaret Payne', 35, false, '2016-06-28');
insert into users (id, name, age, isAdmin, createdDate) values (51, 'Willie Welch', 18, false, '2016-01-23');
insert into users (id, name, age, isAdmin, createdDate) values (52, 'Stephanie Medina', 32, true, '2016-05-14');
insert into users (id, name, age, isAdmin, createdDate) values (53, 'Todd Cook', 29, true, '2016-03-30');
insert into users (id, name, age, isAdmin, createdDate) values (54, 'Benjamin Hunter', 26, true, '2016-06-30');
insert into users (id, name, age, isAdmin, createdDate) values (55, 'Fred Little', 29, true, '2016-08-21');
insert into users (id, name, age, isAdmin, createdDate) values (56, 'Norma Ward', 37, true, '2016-06-27');
insert into users (id, name, age, isAdmin, createdDate) values (57, 'Judith Reid', 26, true, '2016-03-10');
insert into users (id, name, age, isAdmin, createdDate) values (58, 'Charles Watkins', 39, false, '2016-05-22');
insert into users (id, name, age, isAdmin, createdDate) values (59, 'Arthur Powell', 39, false, '2016-09-24');
insert into users (id, name, age, isAdmin, createdDate) values (60, 'Sean Ray', 28, false, '2016-03-11');
insert into users (id, name, age, isAdmin, createdDate) values (61, 'Earl Dixon', 34, false, '2016-08-17');
insert into users (id, name, age, isAdmin, createdDate) values (62, 'Kathryn George', 38, true, '2016-01-15');
insert into users (id, name, age, isAdmin, createdDate) values (63, 'Jennifer Bennett', 35, true, '2016-08-05');
insert into users (id, name, age, isAdmin, createdDate) values (64, 'Dorothy Sullivan', 35, false, '2016-07-14');
insert into users (id, name, age, isAdmin, createdDate) values (65, 'Denise Lee', 38, false, '2016-05-07');
insert into users (id, name, age, isAdmin, createdDate) values (66, 'Amanda Castillo', 23, false, '2016-07-07');
insert into users (id, name, age, isAdmin, createdDate) values (67, 'Kimberly Peterson', 42, false, '2016-04-05');
insert into users (id, name, age, isAdmin, createdDate) values (68, 'Martin Graham', 23, true, '2016-07-30');
insert into users (id, name, age, isAdmin, createdDate) values (69, 'Debra Williamson', 25, true, '2016-10-12');
insert into users (id, name, age, isAdmin, createdDate) values (70, 'James Medina', 32, false, '2015-11-22');
insert into users (id, name, age, isAdmin, createdDate) values (71, 'Joan Perez', 45, true, '2016-09-04');
insert into users (id, name, age, isAdmin, createdDate) values (72, 'Kathryn Hart', 31, false, '2016-05-29');
insert into users (id, name, age, isAdmin, createdDate) values (73, 'Gary Henderson', 35, true, '2016-03-11');
insert into users (id, name, age, isAdmin, createdDate) values (74, 'Gregory Dean', 42, false, '2016-08-09');
insert into users (id, name, age, isAdmin, createdDate) values (75, 'Debra Cox', 24, false, '2016-11-05');
insert into users (id, name, age, isAdmin, createdDate) values (76, 'Robin Ramirez', 38, true, '2016-08-17');
insert into users (id, name, age, isAdmin, createdDate) values (77, 'Willie Black', 25, true, '2016-05-08');
insert into users (id, name, age, isAdmin, createdDate) values (78, 'Andrea Coleman', 42, false, '2016-06-10');
insert into users (id, name, age, isAdmin, createdDate) values (79, 'Jeremy Kim', 23, true, '2015-12-18');
insert into users (id, name, age, isAdmin, createdDate) values (80, 'Eric Fields', 32, true, '2016-10-03');
insert into users (id, name, age, isAdmin, createdDate) values (81, 'Jacqueline Alexander', 44, false, '2016-05-22');
insert into users (id, name, age, isAdmin, createdDate) values (82, 'Wanda Thompson', 29, true, '2016-05-14');
insert into users (id, name, age, isAdmin, createdDate) values (83, 'Janet Chavez', 25, true, '2016-09-24');
insert into users (id, name, age, isAdmin, createdDate) values (84, 'Kathy Cruz', 43, true, '2016-10-03');
insert into users (id, name, age, isAdmin, createdDate) values (85, 'Janice Collins', 35, false, '2016-05-26');
insert into users (id, name, age, isAdmin, createdDate) values (86, 'Judy Miller', 34, true, '2016-04-27');
insert into users (id, name, age, isAdmin, createdDate) values (87, 'Randy Hill', 31, true, '2016-11-06');
insert into users (id, name, age, isAdmin, createdDate) values (88, 'Margaret Riley', 36, true, '2016-07-05');
insert into users (id, name, age, isAdmin, createdDate) values (89, 'Rose Reid', 42, true, '2016-07-02');
insert into users (id, name, age, isAdmin, createdDate) values (90, 'Betty Ferguson', 38, true, '2015-12-25');
insert into users (id, name, age, isAdmin, createdDate) values (91, 'Rebecca Turner', 18, false, '2016-05-07');
insert into users (id, name, age, isAdmin, createdDate) values (92, 'Joseph Smith', 23, false, '2016-01-20');
insert into users (id, name, age, isAdmin, createdDate) values (93, 'Cynthia Moore', 32, false, '2016-02-02');
insert into users (id, name, age, isAdmin, createdDate) values (94, 'Jean Bowman', 45, true, '2016-10-20');
insert into users (id, name, age, isAdmin, createdDate) values (95, 'Julie Patterson', 20, false, '2015-12-03');
insert into users (id, name, age, isAdmin, createdDate) values (96, 'Nicole Campbell', 20, false, '2016-02-26');
insert into users (id, name, age, isAdmin, createdDate) values (97, 'Mildred Wheeler', 35, false, '2016-01-26');
insert into users (id, name, age, isAdmin, createdDate) values (98, 'Robin Green', 38, true, '2015-12-05');
insert into users (id, name, age, isAdmin, createdDate) values (99, 'Nicole Jackson', 45, true, '2016-10-29');
insert into users (id, name, age, isAdmin, createdDate) values (100, 'Gregory Lane', 42, false, '2015-12-08');
