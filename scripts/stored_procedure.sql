

-- get_user_type
-- Obtiene todos los tipos de usuarios existentes

DELIMITER //

CREATE PROCEDURE get_user_type()
BEGIN
    SELECT JSON_ARRAYAGG(
               JSON_OBJECT('user_type_id', user_type_id, 'name', name)
           )
      INTO @json
      FROM user_type;
    SELECT @json;
END //

DELIMITER ;

----------------
-- get_country
-- Obtiene todos los paises existentes

DELIMITER //

CREATE PROCEDURE get_country()
BEGIN
    SELECT JSON_ARRAYAGG(
               JSON_OBJECT('country_id', country_id, 'name', name)
           )
      INTO @json
      FROM country;
    SELECT @json;
END //

DELIMITER ;

---------------
-- get_province --1
-- Obtiene las provincias segun el id del pais

DELIMITER //

CREATE PROCEDURE get_province(IN var_country_id TINYINT)
BEGIN
    DECLARE cantons JSON;
    
    SELECT JSON_ARRAYAGG(
        JSON_OBJECT('province_id', province_id, 'name', name)
    ) INTO cantons 
    FROM province
    WHERE country_id = var_country_id ;
    
    SELECT cantons;
END//

DELIMITER ;

----------------------------------------------------
-- get_cantons
-- Obtiene los cantones segun el id de la provincia
-- call get_cantons(3)

DELIMITER //

CREATE PROCEDURE get_cantons(IN var_province_id TINYINT)
BEGIN
    DECLARE cantons JSON;
    
    SELECT JSON_ARRAYAGG(
        JSON_OBJECT('canton_id', canton_id, 'name', name)
    ) INTO cantons 
    FROM canton
    WHERE province_id = var_province_id ;
    
    SELECT cantons;
END//

DELIMITER ;


----------------
-- get_districts
-- Obtiene los distritos segun el id del cantón
-- call get_districts(3)

DELIMITER //

CREATE PROCEDURE get_districts(IN var_canton_id TINYINT)
BEGIN
    DECLARE districts JSON;
    
    SELECT JSON_ARRAYAGG(
        JSON_OBJECT('district_id', district_id, 'name', name)
    ) INTO districts 
    FROM district
    WHERE canton_id = var_canton_id ;
    
    SELECT districts;
END//

DELIMITER ;

-- get_institution
-- Obtiene todas las intituciones registradas en el sistema sin importar el distrito
-- call get_institution()

DELIMITER //

CREATE PROCEDURE get_institution()
BEGIN
    SELECT JSON_ARRAYAGG(
               JSON_OBJECT('institution_id', institution_id, 'name', name)
           )
      INTO @json
      FROM institution;
    SELECT @json;
END //

DELIMITER ;

----------------------------------------------------------------------
-- get_group_teacher
-- Obtiene los grupos del tutor con su respectiva informacion de grupo
-- call get_group_teacher_json(11) del 11 al 15

DELIMITER //

CREATE PROCEDURE get_group_teacher_json(IN teacher_id INT)
BEGIN
    SELECT JSON_ARRAYAGG(
        JSON_OBJECT(
            'group_id', g.group_id,
            'name', g.name,
            'group_code', g.group_code
        )
    )
    INTO @json_result
    FROM group_class g
    INNER JOIN group_teacher gt ON g.group_id = gt.group_id
    INNER JOIN user u ON gt.teacher_user_id = u.user_id
    WHERE u.user_id = teacher_id;
    
    SELECT @json_result AS json_result;
END//

DELIMITER ;


--------------------
-- get_students_group
--- El siguiente procedimiento da todos los estudiantes de un grupo
-- call students_group(3) del 1 al 3

DELIMITER //

CREATE PROCEDURE students_group(IN group_id INT)
BEGIN
    SELECT JSON_ARRAYAGG(
        JSON_OBJECT(
            'stuent_id', u.user_id,
            'name', u.name
        )
    )
    INTO @json_result
    FROM user u
    INNER JOIN group_student gs ON u.user_id = gs.student_user_id
    WHERE group_id = gs.group_id;
    
    SELECT @json_result AS json_result;
END//

DELIMITER ;


--------------------------------
-- get_user
--- El siguiente procedimiento da la informacion completa del usario mediante su id
-- call get_user(3)

DELIMITER //

CREATE PROCEDURE get_user(IN user_id INT)
BEGIN
    SELECT JSON_ARRAYAGG(
        JSON_OBJECT(
            'name', u.name,
             'user_type', ut.name, 
	     'institution', i.name,
             'district', d.name,
             'user_code', u.user_code,
             'district', d.name,
             'canton', c.name,
             'province', p.name,
             'country', co.name,
             'email', u.email
        )
    )
    INTO @json_result
    FROM user u
    INNER JOIN user_type ut ON u.user_type_id = ut.user_type_id
    INNER JOIN institution i ON u.institution_id = i.institution_id 
    INNER JOIN district d ON u.district_id = d.district_id 
    INNER JOIN canton c ON d.canton_id = c.canton_id
    INNER JOIN province p ON c.province_id = p.province_id
    INNER JOIN country co ON p.country_id = co.country_id
    WHERE user_id = u.user_id ;
    
    SELECT @json_result AS json_result;
END//

DELIMITER ;

-------
-- get_group_info --REVISAR
-- El siguiente metodo muestra la infomacion de los grupos, el nombre, fecha y hora, el profesor a cargo
-- call get_group_info(1)

DELIMITER //

CREATE PROCEDURE get_group_info(IN group_id INT)
BEGIN
    SELECT JSON_ARRAYAGG(
        JSON_OBJECT(
            'group_id', gc.group_id,
            'name', gc.name,
            'group_code', gc.group_code,
            'day', gd.day,
            'hour', gd.hour,
            'teacher', ut.name 
        )
    )
    INTO @json_result
    FROM group_class gc
    INNER JOIN group_date gd ON gc.group_id = gd.group_id
    INNER JOIN group_teacher gt ON gc.group_id = gt.group_id  
    INNER JOIN user ut ON gt.teacher_user_id = ut.user_id  
    WHERE gc.group_id = group_id;
    
    SELECT @json_result AS json_result;
END//

DELIMITER ;

'[{\"day\": \"Lunes\", \"hour\": \"09:00:00.000000\", \"name\": \"Grupo A\", \"teacher\": \"Ana González\", \"group_id\": 1, \"group_code\": \"GRPA001\"}, {\"day\": \"Miercoles\", \"hour\": \"09:00:00.000000\", \"name\": \"Grupo A\", \"teacher\": \"Ana González\", \"group_id\": 1, \"group_code\": \"GRPA001\"}]'

------

-- get_group_teacher_info --Revisar
-- Obtiene los grupos del tutor con su respectiva informacion de grupo mas general
-- call get_group_teacher(11)

DELIMITER //

CREATE PROCEDURE get_group_teacher(IN teacher_id INT)
BEGIN
    SELECT JSON_ARRAYAGG(
        JSON_OBJECT(
            'group_id', g.group_id,
            'name', g.name,
            'progress', l.name,
            'total_students', (
                SELECT COUNT(*)
                FROM group_student gs
                WHERE gs.group_id = g.group_id
            )
        )
    )
    INTO @json_result
    FROM group_class g
    INNER JOIN group_teacher gt ON g.group_id = gt.group_id
    INNER JOIN user u ON gt.teacher_user_id = u.user_id
    INNER JOIN lesson l ON l.lesson_id = g.next_lesson_id
    WHERE u.user_id = teacher_id;
    
    SELECT @json_result AS json_result;
END//

DELIMITER ;

------
-----------------------------------------------------PROBAR
-- get_lessons
-- Funcion que muestra el nombre de las lecciones

DELIMITER //

CREATE PROCEDURE get_lessons()
BEGIN
    SELECT JSON_ARRAYAGG(
               JSON_OBJECT('lesson_id', lesson_id, 'name', name)
           )
      INTO @json
      FROM lesson;
    SELECT @json;
END //

DELIMITER ;

-----------
-- get_lessons_details
-- Funcion que muestra el nombre de las lecciones
-- call get_lessons_details()

DELIMITER //

CREATE PROCEDURE get_lessons_details()
BEGIN
    SELECT JSON_ARRAYAGG(
               JSON_OBJECT('lesson_id', lesson_id, 'name', name, 'words', words, 'description', description)
           )
      INTO @json
      FROM lesson;
    SELECT @json;
END //

DELIMITER ;


--------

PROCEDMIENTOS DE INSERCION

-- insert_group_class
-- Procedimiento que crea grupos, crea un group_code y lo devulve exitosamente

DELIMITER //

CREATE PROCEDURE insert_group_class(
    IN p_next_lesson_id TINYINT UNSIGNED,
    IN p_name VARCHAR(16),
    OUT var_code JSON
)
BEGIN
    DECLARE v_group_code VARCHAR(16);
    SET v_group_code = CONCAT('GR', FLOOR(RAND() * 10000));
    
    WHILE EXISTS (SELECT 1 FROM group_class WHERE group_code = v_group_code) DO
        SET v_group_code = CONCAT('GR', FLOOR(RAND() * 10000));
    END WHILE;
    
    INSERT INTO group_class (next_lesson_id, name, group_code)
    VALUES (p_next_lesson_id, p_name, v_group_code);
    
    SET var_code = JSON_OBJECT('group_code', v_group_code);
END //

DELIMITER ;

-- Pruebas

CALL insert_group_class(1, 'Grupo A1', @group_code);
SELECT @group_code AS group_code;

select * from group_class

----------------------

-- insert_user
-- Procedimiento que inserta en la base de datos un usuario nuevo

DELIMITER //

CREATE PROCEDURE insert_user(
    IN p_user_type_id TINYINT UNSIGNED,
    IN p_institution_id INT UNSIGNED,
    IN p_district_id INT UNSIGNED,
    IN p_password BINARY(40),
    IN p_email VARCHAR(32),
    IN p_name VARCHAR(32)
)
BEGIN
    DECLARE v_user_code VARCHAR(16);
    SET v_user_code = CONCAT('USR', FLOOR(RAND() * 10000));
    
    WHILE EXISTS (SELECT 1 FROM user WHERE user_code = v_user_code) DO
        SET v_user_code = CONCAT('USR', FLOOR(RAND() * 10000));
    END WHILE;
    
    INSERT INTO user (user_type_id, institution_id, district_id, user_code, password, email, name)
    VALUES (p_user_type_id, p_institution_id, p_district_id, v_user_code, p_password, p_email, p_name);
    
END //

DELIMITER ;

-- Pruebas

CALL insert_user(1, 1, 1, '1234', 'monolo22@estudiantec.cr', 'Manolo Fenandez')
 

------------
-- edit_user
-- Procedimiento que edita la informacion de un usuario

DELIMITER //

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














