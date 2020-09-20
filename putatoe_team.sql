create database putatoe_team;
use putatoe_team;

show tables;
/*

+------------------------+
| Tables_in_putatoe_team |
+------------------------+
| person                 |
| person_project         |
| project                |
+------------------------+
3 rows in set (0.01 sec)

*/


create table person(
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `name` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
    `desc` varchar(350) COLLATE utf8_unicode_ci DEFAULT NULL,
    `role` varchar(40) COLLATE utf8_unicode_ci NOT NULL, 
    `img_url` varchar(105) COLLATE utf8_unicode_ci NOT NULL,
    `linkedin_url` varchar(105) COLLATE utf8_unicode_ci NOT NULL,
    `mail_id` varchar(105) COLLATE utf8_unicode_ci NOT NULL,
    
     PRIMARY KEY (`id`)
    )
    ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

desc person;
/*

+--------------+--------------+------+-----+---------+----------------+
| Field        | Type         | Null | Key | Default | Extra          |
+--------------+--------------+------+-----+---------+----------------+
| id           | int          | NO   | PRI | NULL    | auto_increment |
| name         | varchar(40)  | YES  |     | NULL    |                |
| desc         | varchar(350) | YES  |     | NULL    |                |
| role         | varchar(40)  | NO   |     | NULL    |                |
| img_url      | varchar(105) | NO   |     | NULL    |                |
| linkedin_url | varchar(105) | NO   |     | NULL    |                |
| mail_id      | varchar(105) | NO   |     | NULL    |                |
+--------------+--------------+------+-----+---------+----------------+
7 rows in set (0.01 sec)

*/


create table project (
   `id` int NOT NULL AUTO_INCREMENT, 
   `name` varchar(40) COLLATE utf8_unicode_ci NOT NULL, 
   `desc` varchar(350) COLLATE utf8_unicode_ci DEFAULT NULL, 
   
   PRIMARY KEY(`id`)
   )
   ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

   
desc project;
/*

+-------+--------------+------+-----+---------+----------------+
| Field | Type         | Null | Key | Default | Extra          |
+-------+--------------+------+-----+---------+----------------+
| id    | int          | NO   | PRI | NULL    | auto_increment |
| name  | varchar(40)  | NO   |     | NULL    |                |
| desc  | varchar(350) | YES  |     | NULL    |                |
+-------+--------------+------+-----+---------+----------------+
3 rows in set (0.00 sec)

*/


/*Adding many to many relationship between person and project table*/

create table person_project (
   `person_id` int NOT NULL,
   `project_id` int NOT NULL,
   
    PRIMARY KEY (`person_id`,`project_id`),
    FOREIGN KEY (`person_id`) references person (`id`) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (`project_id`) references project (`id`) ON UPDATE CASCADE ON DELETE CASCADE
   )
   ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


desc person_project;
/*

+------------+------+------+-----+---------+-------+
| Field      | Type | Null | Key | Default | Extra |
+------------+------+------+-----+---------+-------+
| person_id  | int  | NO   | PRI | NULL    |       |
| project_id | int  | NO   | PRI | NULL    |       |
+------------+------+------+-----+---------+-------+
2 rows in set (0.00 sec)

*/


create table employee_details(
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `name` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
    `desc` varchar(350) COLLATE utf8_unicode_ci DEFAULT NULL,
    `role` varchar(40) COLLATE utf8_unicode_ci NOT NULL, 
    `img_url` varchar(105) COLLATE utf8_unicode_ci NOT NULL,
    `linkedin_url` varchar(105) COLLATE utf8_unicode_ci NOT NULL,
    `mail_id` varchar(105) COLLATE utf8_unicode_ci NOT NULL,
    `Work_desc` varchar(350) COLLATE utf8_unicode_ci DEFAULT NULL,
    
     PRIMARY KEY (`id`)
    )
    ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

desc employee_details;

/*

+--------------+---------------+------+-----+---------+----------------+
| Field        | Type          | Null | Key | Default | Extra          |
+--------------+---------------+------+-----+---------+----------------+
| id           | int           | NO   | PRI | NULL    | auto_increment |
| name         | varchar(40)   | YES  |     | NULL    |                |
| desc         | varchar(350)  | YES  |     | NULL    |                |
| role         | varchar(40)   | NO   |     | NULL    |                |
| img_url      | varchar(105)  | NO   |     | NULL    |                |
| linkedin_url | varchar(105)  | NO   |     | NULL    |                |
| mail_id      | varchar(105)  | NO   |     | NULL    |                |
| work_desc    | varchar(1050) | YES  |     | NULL    |                |
+--------------+---------------+------+-----+---------+----------------+
8 rows in set (0.00 sec)


*/




