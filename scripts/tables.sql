DROP  SCHEMA IF EXISTS semitec_db;
CREATE SCHEMA semitec_db;
USE semitec_db;

CREATE TABLE user_type (
    user_type_id TINYINT UNSIGNED NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(16) NOT NULL 
);

-------

CREATE TABLE institution (
    institution_id INT UNSIGNED NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
    district_id INT UNSIGNED NOT NULL,
    name VARCHAR(64) NOT NULL,
    FOREIGN KEY (district_id) REFERENCES district(district_id) 
);


--------

CREATE TABLE district (
    district_id INT UNSIGNED NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
    canton_id mediumint UNSIGNED NOT NULL,
    name VARCHAR(64) NOT NULL,
    FOREIGN KEY (canton_id) REFERENCES canton(canton_id) 
);


--------

CREATE TABLE canton (
    canton_id mediumint UNSIGNED NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
    province_id smallint UNSIGNED  NOT NULL,
    name VARCHAR(64) NOT NULL,
    FOREIGN KEY (province_id) REFERENCES province(province_id) 
);


-------

CREATE TABLE province (
    province_id SMALLINT UNSIGNED NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
    country_id TINYINT UNSIGNED NOT NULL,
    name VARCHAR(64) NOT NULL, 
    FOREIGN KEY (country_id) REFERENCES country(country_id)
);

-------

CREATE TABLE country(
    country_id TINYINT UNSIGNED NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(64) NOT NULL 
);

------
-- user Original
CREATE TABLE user(
    user_id INT UNSIGNED NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
    user_type_id TINYINT UNSIGNED NOT NULL ,
    institution_id INT UNSIGNED NOT NULL ,
    district_id INT UNSIGNED NOT NULL ,
    user_code VARCHAR(16) NOT NULL UNIQUE,
    password VARCHAR(60) NOT NULL,
    email VARCHAR(32) NOT NULL,
    name VARCHAR(32) NOT NULL,
    salt VARCHAR(29) NOT NULL,
    FOREIGN KEY (user_type_id) REFERENCES user_type(user_type_id),
    FOREIGN KEY (institution_id) REFERENCES institution(institution_id),
    FOREIGN KEY (district_id) REFERENCES district(district_id) 
);




---------

CREATE TABLE level(
    level_id TINYINT UNSIGNED NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(16) NOT NULL
);

---------

CREATE TABLE lesson(
    lesson_id TINYINT UNSIGNED NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
    level_id TINYINT UNSIGNED NOT NULL,
    words VARCHAR(64) NOT NULL,
    iterations TINYINT NOT NULL,
    min_time SMALLINT NOT NULL,
    min_mistakes SMALLINT(1) NOT NULL,
    name VARCHAR(16) NOT NULL,
    description VARCHAR(128),
    FOREIGN KEY (level_id) REFERENCES level(level_id)
);

---------

CREATE TABLE lesson_metrics(
    lesson_metrics_id INT UNSIGNED NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
    lesson_id TINYINT UNSIGNED NOT NULL,
    student_user_id INT UNSIGNED NOT NULL,
    time_taken SMALLINT NOT NULL,
    mistakes SMALLINT NOT NULL,
    accuracy_rate FLOAT NOT NULL,
    pulsation_per_minute SMALLINT(1) NOT NULL,
    is_complete BIT,
    FOREIGN KEY (lesson_id) REFERENCES lesson(lesson_id)
);


--------
-- Original
CREATE TABLE group_class(
    group_id MEDIUMINT UNSIGNED NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
    next_lesson_id TINYINT UNSIGNED NOT NULL,
    name VARCHAR(16) NOT NULL,
    group_code VARCHAR(16) NOT NULL,
    FOREIGN KEY (next_lesson_id) REFERENCES lesson(lesson_id)
);

------------

CREATE TABLE group_teacher(
   group_teacher_id MEDIUMINT(1) UNSIGNED NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
   group_id MEDIUMINT(1) UNSIGNED NOT NULL,
   teacher_user_id INT UNSIGNED NOT NULL,
   FOREIGN KEY (group_id) REFERENCES group_class(group_id),
   FOREIGN KEY (teacher_user_id) REFERENCES user(user_id)
);

CREATE TABLE group_student(
   group_student_id MEDIUMINT(1) UNSIGNED NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
   group_id MEDIUMINT(1) UNSIGNED NOT NULL,
   student_user_id INT UNSIGNED NOT NULL,
   FOREIGN KEY (group_id) REFERENCES group_class(group_id),
   FOREIGN KEY (student_user_id) REFERENCES user(user_id)
);


-------------

CREATE TABLE group_date(
    group_date_id MEDIUMINT UNSIGNED NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
    group_id MEDIUMINT UNSIGNED NOT NULL,
    hour TIME NOT NULL,
    day ENUM("Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sábado", "Domingo"),
    FOREIGN KEY (group_id) REFERENCES group_class(group_id)  
);

-------------










