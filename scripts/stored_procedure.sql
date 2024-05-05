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
-- call get_group_teacher(11)
CREATE PROCEDURE get_group_teacher_info(IN teacher_id INT)
BEGIN
    SELECT g.group_id, g.name, l.name AS progress,
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
-- get_group_info --REVISAR
-- El siguiente metodo muestra la infomacion de los grupos, el nombre, fecha y hora, el profesor a cargo
-- call get_group_info(1)
CREATE PROCEDURE get_group_info(IN group_id INT)
BEGIN
    SELECT gc.group_id, gc.name AS group_name, gc.group_code, gd.day, gd.hour, ut.name AS teacher_name
    FROM group_class gc
    INNER JOIN group_date gd ON gc.group_id = gd.group_id
    INNER JOIN group_teacher gt ON gc.group_id = gt.group_id  
    INNER JOIN user ut ON gt.teacher_user_id = ut.user_id  
    WHERE gc.group_id = group_id;
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
-- CALL insert_group_class(1, 'Grupo A1', @group_code);
-- SELECT @group_code AS group_code;
CREATE PROCEDURE insert_group_class(
    IN p_next_lesson_id TINYINT UNSIGNED,
    IN p_name VARCHAR(16),
    OUT var_code VARCHAR(16)
)
BEGIN
    DECLARE v_group_code VARCHAR(16);
    SET v_group_code = CONCAT('GR', FLOOR(RAND() * 10000));
    
    WHILE EXISTS (SELECT 1 FROM group_class WHERE group_code = v_group_code) DO
        SET v_group_code = CONCAT('GR', FLOOR(RAND() * 10000));
    END WHILE;
    
    INSERT INTO group_class (next_lesson_id, name, group_code)
    VALUES (p_next_lesson_id, p_name, v_group_code);
    
    SET var_code = v_group_code;
END //

DELIMITER ;

DELIMITER //

-- insert_user
-- Procedimiento que inserta en la base de datos un usuario nuevo
-- CALL insert_user(1, 1, 1,'$2a$10$IXBZIvaw/6rnayXcx6TobeWzpjlgTww6d/FPTJBg37jMEFgLjTx', 'monolo22@estudiantec.cr', 'Manolo Fenandez', 'asdf')
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