DELIMITER //

-- get_user_type
-- Obtiene todos los tipos de usuarios existentes
CREATE PROCEDURE get_user_type()
BEGIN
    SELECT user_type_id, name
    FROM user_type;
END//

DELIMITER ;

DELIMITER //

-- get_country
-- Obtiene todos los paises existentes
CREATE PROCEDURE get_country()
BEGIN
    SELECT country_id, name
    FROM country;
END//

DELIMITER ;

DELIMITER //

-- get_province --1
-- Obtiene las provincias segun el id del pais
CREATE PROCEDURE get_province(IN var_country_id TINYINT)
BEGIN
    SELECT province_id, name
    FROM province
    WHERE country_id = var_country_id;
END//

DELIMITER ;

DELIMITER //

-- get_cantons
-- Obtiene los cantones segun el id de la provincia
-- call get_cantons(3)
CREATE PROCEDURE get_cantons(IN var_province_id TINYINT)
BEGIN
    SELECT canton_id, name
    FROM canton
    WHERE province_id = var_province_id;
END//

DELIMITER ;

DELIMITER //

-- get_districts
-- Obtiene los distritos segun el id del cantón
-- call get_districts(3)
CREATE PROCEDURE get_districts(IN var_canton_id TINYINT)
BEGIN
    SELECT district_id, name
    FROM district
    WHERE canton_id = var_canton_id;
END//

DELIMITER ;

DELIMITER //

-- get_institution
-- Obtiene todas las intituciones de un pais
-- call get_institution()
CREATE PROCEDURE get_institution(IN var_country_id TINYINT UNSIGNED)
BEGIN
    SELECT i.institution_id, i.name
    FROM institution i
    INNER JOIN district d ON i.district_id = d.district_id
    INNER JOIN canton c ON d.canton_id = c.canton_id
    INNER JOIN province p ON p.province_id = c.province_id
    INNER JOIN country co ON p.country_id = co.country_id
    WHERE co.country_id = var_country_id;
END//

DELIMITER ;

DELIMITER //

-- get_group_teacher
-- Obtiene los grupos del tutor con su respectiva informacion de grupo
-- call get_group_teacher_json(11) del 11 al 15
CREATE PROCEDURE get_group_teacher(IN teacher_id INT)
BEGIN
    SELECT g.group_id, g.name, g.group_code
    FROM group_class g
    INNER JOIN group_teacher gt ON g.group_id = gt.group_id
    INNER JOIN user u ON gt.teacher_user_id = u.user_id
    WHERE u.user_id = teacher_id;
END//

DELIMITER ;

DELIMITER //

-- get_group_teacher_info
-- Obtiene los grupos del tutor con su respectiva informacion de grupo mas general
-- 
CREATE PROCEDURE get_group_teacher_info(IN teacher_id INT)
BEGIN
    SELECT g.group_id, g.name, l.name AS progress, g.group_code,
           (SELECT COUNT(*) FROM group_student gs WHERE gs.group_id = g.group_id) AS total_students
    FROM group_class g
    INNER JOIN group_teacher gt ON g.group_id = gt.group_id
    INNER JOIN user u ON gt.teacher_user_id = u.user_id
    INNER JOIN lesson l ON l.lesson_id = g.next_lesson_id
    WHERE u.user_id = teacher_id;
END//

DELIMITER ;

DELIMITER //

-- get_students_group
-- El siguiente procedimiento da todos los estudiantes de un grupo
-- call students_group(3) del 1 al 3
CREATE PROCEDURE students_group(IN group_id INT)
BEGIN
    SELECT u.user_id AS student_id, u.name
    FROM user u
    INNER JOIN group_student gs ON u.user_id = gs.student_user_id
    WHERE gs.group_id = group_id;
END//

DELIMITER ;

DELIMITER //

-- get_user
-- El siguiente procedimiento da la informacion completa del usario mediante su id
-- call get_user(3)
CREATE PROCEDURE get_user(IN user_id INT)
BEGIN
    SELECT u.name, ut.name AS user_type, i.name AS institution, 
           d.name AS district, u.user_code, c.name AS canton, 
           p.name AS province, co.name AS country, u.email
    FROM user u
    INNER JOIN user_type ut ON u.user_type_id = ut.user_type_id
    INNER JOIN institution i ON u.institution_id = i.institution_id 
    INNER JOIN district d ON u.district_id = d.district_id 
    INNER JOIN canton c ON d.canton_id = c.canton_id
    INNER JOIN province p ON c.province_id = p.province_id
    INNER JOIN country co ON p.country_id = co.country_id
    WHERE u.user_id = user_id ;
END//

DELIMITER ;

DELIMITER //
-- get_group_info 
-- El siguiente metodo muestra la infomacion de los grupos, el nombre, fecha y hora, el profesor a cargo
-- call get_group_info(1)
CREATE PROCEDURE get_group_info(IN group_id INT)
BEGIN
    SELECT gc.group_id, gc.name AS group_name, gc.group_code, ut.name AS teacher_name
    FROM group_class gc
    INNER JOIN group_teacher gt ON gc.group_id = gt.group_id  
    INNER JOIN user ut ON gt.teacher_user_id = ut.user_id  
    WHERE gc.group_id = group_id;
END//

DELIMITER ;

DELIMITER //
-- get_group_info
-- El siguiente metodo muestra la infomacion de los grupos, el nombre, fecha y hora, el profesor a cargo segun el id del estudiante
-- call get_group_info_by_student(1)
CREATE PROCEDURE get_group_info_by_student(IN var_user_id INT)
BEGIN
    SELECT gc.group_id, gc.name AS group_name, gc.group_code,  ut.name AS teacher_name
    FROM group_class gc
    INNER JOIN group_student gs ON gc.group_id = gs.group_id 
    INNER JOIN group_teacher gt ON gc.group_id = gt.group_id  
    INNER JOIN user ut ON gt.teacher_user_id = ut.user_id  
    WHERE gs.student_user_id = var_user_id;
END//

DELIMITER ;

DELIMITER //
-- get_group_date
-- El siguiente metodo muestra fecha y hora
CREATE PROCEDURE get_group_date(IN var_group_id INT)
BEGIN
    SELECT DATE_FORMAT(gd.hour,'%H:%i') AS hour, gd.day
    FROM group_date gd
    WHERE gd.group_date_id = var_group_id;
END//

DELIMITER ;

DELIMITER //

-- Retorna el detalle de la leccion on id p_lesson_id
CREATE PROCEDURE get_lesson(IN p_lesson_id tinyint)
BEGIN
    SELECT
		lesson_id
        , words
        , iterations
        , min_time
        , min_mistakes
    FROM lesson
    WHERE lesson_id = p_lesson_id;
END//

DELIMITER;

DELIMITER //

-- Retorna las metricas de un estudiante con el id
CREATE PROCEDURE get_lesson_metrics_student(IN p_student_id tinyint)
BEGIN
    SELECT
		lesson_id
        , time_taken
        , mistakes
        , accuracy_rate
        , pulsation_per_minute
        , is_complete
    FROM lesson_metrics 
    WHERE student_user_id = p_student_id;
END//

DELIMITER;

DELIMITER //

-- Obtiene la lista de todas las lecciones
-- call get_lessons_details()
CREATE PROCEDURE get_lessons()
BEGIN
    SELECT
		lesson_id
        , name
        , words
        , description
    FROM lesson;
END//
DELIMITER ;

DELIMITER //

-- insert_group_class
-- Procedimiento que crea grupos, crea un group_code y lo devulve exitosamente
-- CALL insert_group_class(1, 'Grupo A1', 1);
-- SELECT @group_code AS group_code;
CREATE PROCEDURE insert_group_class(
    IN p_next_lesson_id TINYINT UNSIGNED,
    IN p_name VARCHAR(16),
    IN p_teacher_user_id INT UNSIGNED
)
BEGIN
    DECLARE v_group_code VARCHAR(16);
    DECLARE var_group_id MEDIUMINT;
    
    SET v_group_code = CONCAT('GR', FLOOR(RAND() * 10000));
    WHILE EXISTS (SELECT 1 FROM group_class WHERE group_code = v_group_code) DO
        SET v_group_code = CONCAT('GR', FLOOR(RAND() * 10000));
    END WHILE;
    
    INSERT INTO group_class (next_lesson_id, name, group_code)
    VALUES (p_next_lesson_id, p_name, v_group_code);
    
    SET var_group_id = LAST_INSERT_ID();
    
    INSERT INTO group_teacher (group_id, teacher_user_id)
    VALUES (var_group_id, p_teacher_user_id);
    
    SELECT var_group_id AS group_id,v_group_code AS group_code;
END //

DELIMITER ;

DELIMITER //

-- insert_user
-- Procedimiento que inserta en la base de datos un usuario nuevo
-- CALL insert_user(2, 1, 1,'$2a$10$IXBZIvaw/6rnayXcx6TobeWzpjlgTww6d/FPTJBg37jMEFgLjTx', 'monolo22@estudiantec.cr', 'Manolin Fenandez', 'asdf')
CREATE PROCEDURE insert_user(
    IN p_user_type_id TINYINT UNSIGNED,
    IN p_institution_id INT UNSIGNED,
    IN p_district_id INT UNSIGNED,
    IN p_password VARCHAR(60),
    IN p_email VARCHAR(32),
    IN p_name VARCHAR(32),
    IN p_salt VARCHAR(29)
)
BEGIN
    DECLARE v_user_code VARCHAR(16);
    SET v_user_code = CONCAT('USR', FLOOR(RAND() * 10000));
    
    WHILE EXISTS (SELECT 1 FROM user WHERE user_code = v_user_code) DO
        SET v_user_code = CONCAT('USR', FLOOR(RAND() * 10000));
    END WHILE;
    
    INSERT INTO user (user_type_id, institution_id, district_id, user_code, password, email, name, salt)
    VALUES (p_user_type_id, p_institution_id, p_district_id, v_user_code, p_password, p_email, p_name, p_salt);
    
END //

DELIMITER ;

DELIMITER //

-- edit_user
-- Procedimiento que edita la informacion de un usuario
CREATE PROCEDURE edit_user(
    IN p_user_id INT UNSIGNED,
    IN p_institution_id INT UNSIGNED,
    IN p_district_id INT UNSIGNED,
    IN p_password BINARY(40),
    IN p_email VARCHAR(32),
    IN p_name VARCHAR(32)
)
BEGIN
    UPDATE user
    SET institution_id = p_institution_id,
        district_id = p_district_id,
        password = p_password,
        email = p_email,
        name = p_name
    WHERE user_id = p_user_id;
END//

DELIMITER ;

DELIMITER //

-- insert_student_group_code
-- Este procedimiento inserta a un estudiante a un grupo por medio del user_code del estudiante
CREATE PROCEDURE insert_student_group_code(
    IN var_group_id MEDIUMINT UNSIGNED,
    IN var_user_code VARCHAR(16)
)
BEGIN
    DECLARE var_user_id INT;
    
    SELECT u.user_id INTO var_user_id 
    FROM user u
    WHERE u.user_code = var_user_code;
    
    INSERT INTO group_student (group_id, student_user_id)
    VALUES (var_group_id, var_user_id);
    
END //
DELIMITER ;

DELIMITER //

-- delete_student_from_group
-- Procedimiento que elimina a un estudiante de un grupo
CREATE PROCEDURE delete_student_from_group(
    IN var_user_id INT
)
BEGIN

    DELETE FROM group_student 
    WHERE student_user_id = var_user_id;
    
END //
DELIMITER ;

DELIMITER //

-- get user types and passwor to be auth
CREATE PROCEDURE login(
	IN p_email varchar(32)
)
BEGIN
	SELECT
		u.password
        , u.user_id
		, t.user_type_id
        , u.name as username
        , t.name as user_type_name
    FROM user u
    INNER JOIN user_type t
		ON u.user_type_id = t.user_type_id
	WHERE u.email = p_email;
END //

DELIMITER ;

DELIMITER //

-- insert_student_metrics
-- Este procedimiento inserta las metricas de cada clase de un estudiante
-- Prueba CALL insert_student_metrics(3, 1, 120, 5, 0.85, 70, 1);
CREATE PROCEDURE insert_student_metrics(
    IN p_lesson_id TINYINT  UNSIGNED,
    IN p_student_user_id INT UNSIGNED,
    IN p_time_taken SMALLINT,
    IN p_mistakes SMALLINT,
    IN p_accuracy_rate FLOAT,
    IN p_pulsation_per_minute SMALLINT,
    IN p_is_complete BIT
)
BEGIN
    
    INSERT INTO lesson_metrics (lesson_id , student_user_id ,time_taken, mistakes,accuracy_rate, pulsation_per_minute,is_complete)
    VALUES (p_lesson_id, p_student_user_id, p_time_taken, p_mistakes, p_accuracy_rate, p_pulsation_per_minute, p_is_complete);
    
END //
DELIMITER ;

DELIMITER //
-- join_group_by_student_code
-- Este procedimiento inserta a un estudiante a un grupo por medio del group_code del grupo
CREATE PROCEDURE join_group_by_student_code(
    IN var_group_code VARCHAR(16) ,
    IN var_user_id INT UNSIGNED
)
BEGIN
    DECLARE var_group_id INT;
    
    SELECT g.group_id INTO var_group_id 
    FROM group_class g
    WHERE g.group_code = var_group_code;
    
    INSERT INTO group_student (group_id, student_user_id)
    VALUES (var_group_id, var_user_id);
    
END //
DELIMITER ;

DELIMITER //
-- create_lesson
-- Procedimineto que agrega nuevas lecciones 
CREATE PROCEDURE create_lesson(
    IN var_level_id INT ,
    IN var_words TEXT ,
    IN var_min_time SMALLINT,
    IN var_min_mistakes SMALLINT,
    IN var_name VARCHAR(16),
    IN var_description TEXT
)
BEGIN
	INSERT INTO lesson(level_id ,words, min_time, min_mistakes, name, description)
    VALUES(var_level_id, var_words, var_min_time, var_min_mistakes ,var_name, var_description);

END //
DELIMITER ;

DELIMITER //
-- get_level
-- Obtiene todos los niveles
CREATE PROCEDURE get_level()
BEGIN
    SELECT level_id, name
    FROM level;
END//

DELIMITER ;

DELIMITER //
-- insert_lesson_date
-- Este procedimiento inserta una nueva fecha para un grupo
CREATE PROCEDURE insert_lesson_date(
    IN p_group_id MEDIUMINT UNSIGNED,
    IN p_hour TIME,
    IN p_day ENUM("Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sábado", "Domingo")
)
BEGIN
    INSERT INTO group_date (group_id , hour, day)
    VALUES (p_group_id, p_hour, p_day);
END //
DELIMITER ;

DELIMITER //
-- get_lessons_count_by_student
-- obtiene el numero de lecciones realizadas por  estudiante
CREATE PROCEDURE get_lessons_count_by_student(
    IN p_student_id INT  UNSIGNED
)
BEGIN
    SELECT COUNT(*) AS complete_lessons
	FROM lesson_metrics
	WHERE student_user_id = p_student_id AND is_complete = 1;

END //
DELIMITER ;

DELIMITER //
-- get_lessons_count
-- obtiene el numero de lecciones realizadas por  estudiante
CREATE PROCEDURE get_lessons_count()
BEGIN
    SELECT COUNT(*) AS lessons FROM lesson;
END //
DELIMITER ;

DELIMITER //
-- get_average_metrics
-- obtiene el promedio en las metricas de un estudiante
CREATE PROCEDURE get_average_metrics(
    IN p_student_id INT  UNSIGNED
)
BEGIN
    SELECT 
    ROUND(AVG(time_taken)) AS avg_time_taken,
    ROUND(AVG(mistakes)) AS avg_mistakes,
    ROUND(AVG(accuracy_rate),1) AS avg_accuracy_rate,
    ROUND(AVG(pulsation_per_minute)) AS avg_pulsation_per_minute
	FROM lesson_metrics
	WHERE student_user_id = p_student_id;

END //
DELIMITER ;

DELIMITER //
-- get_last_metrics
-- obtiene las ultimas 10 metricas de la precision del estudiante
CREATE PROCEDURE get_last_metrics(
    IN p_student_id INT  UNSIGNED
)
BEGIN
	SELECT * 
	FROM (
		SELECT 
			lesson_metrics_id,
			accuracy_rate,
			time_taken,
			mistakes,
			pulsation_per_minute
		FROM lesson_metrics
		WHERE student_user_id = p_student_id
		ORDER BY lesson_metrics_id DESC
		LIMIT 10
	) AS subconsulta
	ORDER BY lesson_metrics_id ASC;
END //
DELIMITER ;

DELIMITER //
-- get_last_lesson
-- obtiene la ultima leccion en la cual va el estudiante
CREATE PROCEDURE get_last_lesson(
    IN p_student_id INT  UNSIGNED
)
BEGIN
    SELECT 
    MAX(lesson_id) AS max_lesson_id
	FROM lesson_metrics
	WHERE student_user_id = p_student_id AND is_complete = 1;
END //
DELIMITER ;




