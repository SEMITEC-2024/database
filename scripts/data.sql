--Country 

INSERT INTO country (name) VALUES ('Costa Rica');

-----------------

--Provinces

INSERT INTO province (country_id, name) VALUES (1, 'San José');
INSERT INTO province (country_id, name) VALUES (1, 'Alajuela');
INSERT INTO province (country_id, name) VALUES (1, 'Cartago');
INSERT INTO province (country_id, name) VALUES (1, 'Heredia');
INSERT INTO province (country_id, name) VALUES (1, 'Guanacaste');
INSERT INTO province (country_id, name) VALUES (1, 'Puntarenas');
INSERT INTO province (country_id, name) VALUES (1, 'Limón');


-----------

--Cantons

INSERT INTO canton (province_id, name) VALUES (3, 'Alvarado');
INSERT INTO canton (province_id, name) VALUES (3, 'Cartago');
INSERT INTO canton (province_id, name) VALUES (3, 'El Guarco');
INSERT INTO canton (province_id, name) VALUES (3, 'Jiménez');
INSERT INTO canton (province_id, name) VALUES (3, 'La Unión');
INSERT INTO canton (province_id, name) VALUES (3, 'Oreamuno');
INSERT INTO canton (province_id, name) VALUES (3, 'Paraíso');
INSERT INTO canton (province_id, name) VALUES (3, 'Turrialba');


_________


--Districts

INSERT INTO district (canton_id, name) VALUES (3, 'Carmen');
INSERT INTO district (canton_id, name) VALUES (3, 'Corralillo');
INSERT INTO district (canton_id, name) VALUES (3, 'Dulce Nombre');
INSERT INTO district (canton_id, name) VALUES (3, 'Guadalupe');
INSERT INTO district (canton_id, name) VALUES (3, 'Lourdes');
INSERT INTO district (canton_id, name) VALUES (3, 'Occidental');
INSERT INTO district (canton_id, name) VALUES (3, 'Oriental');
INSERT INTO district (canton_id, name) VALUES (3, 'Quebradilla');

------------

--Instituciones

INSERT INTO institution (district_id, name) VALUES (1, 'Escuela Padre Peralta');
INSERT INTO institution (district_id, name) VALUES (2, 'Escuela de los Angeles');
INSERT INTO institution (district_id, name) VALUES (3, 'Escuela Nuestra Señora de Fátima');
INSERT INTO institution (district_id, name) VALUES (4, 'Escuela de Quircot');
INSERT INTO institution (district_id, name) VALUES (1, 'Escuela el Bosque');
INSERT INTO institution (district_id, name) VALUES (3, 'Colegio San Luis Gonzaga');

==========

--Tipos de usuario


INSERT INTO user_type (name) VALUES ('Estudiante')
INSERT INTO user_type (name) VALUES ('Tutor')


----------------------------

-- Estudiantes
INSERT INTO user (user_type_id, institution_id, district_id, password, email, name)
VALUES 
    (1, 1, 1, '1234', 'jose.perez@estudiantec.cr', 'José Pérez'),
    (1, 2, 2, '1234', 'laura.gonzalez@estudiantec.cr', 'Laura González'),
    (1, 3, 3, '1234', 'pedro.castro@estudiantec.cr', 'Pedro Castro'),
    (1, 4, 4, '1234', 'maria.ramirez@estudiantec.cr', 'María Ramírez'),
    (1, 5, 1, '1234', 'carlos.lopez@estudiantec.cr', 'Carlos López'),
    (1, 1, 1, '1234', 'andrea.martinez@estudiantec.cr', 'Andrea Martínez'),
    (1, 2, 2, '1234', 'juan.gomez@estudiantec.cr', 'Juan Gómez'),
    (1, 3, 3, '1234', 'lucia.sanchez@estudiantec.cr', 'Lucía Sánchez'),
    (1, 4, 4, '1234', 'sergio.hernandez@estudiantec.cr', 'Sergio Hernández'),
    (1, 5, 1, '1234', 'daniela.ruiz@estudiantec.cr', 'Daniela Ruiz');




-- Tutores
INSERT INTO user (user_type_id, institution_id, district_id, password, email, name)
VALUES 
    (2, 1, 1, '1234', 'ana.gonzalez@estudiantec.cr', 'Ana González'),
    (2, 2, 2, '1234', 'pedro.martinez@estudiantec.cr', 'Pedro Martínez'),
    (2, 3, 3, '1234', 'luisa.ruiz@estudiantec.cr', 'Luisa Ruiz'),
    (2, 4, 4, '1234', 'juan.gomez@estudiantec.cr', 'Juan Gómez'),
    (2, 5, 1, '1234', 'maria.perez@estudiantec.cr', 'María Pérez');




-----

--Level

INSERT INTO level (name) VALUES
('Fácil'),
('Medio'),
('Difícil');

---------

--Lessons

INSERT INTO lesson (level_id, words, iterations, min_time, min_mistakes, name, description) VALUES
(1, 'hola mundo', 5, 60, 0, 'Saludos', 'Practica escribiendo saludos básicos.'),
(1, 'manzana naranja pera', 3, 45, 1, 'Frutas', 'Practica escribiendo nombres de frutas comunes.'),
(2, 'rápido zorro marrón', 7, 90, 0, 'Velocidad', 'Ejercicio de velocidad con palabras difíciles.'),
(2, 'ejemplo complicado', 4, 60, 2, 'Complejidad', 'Practica con frases complejas.'),
(3, 'excepcionalmente difícil', 10, 120, 1, 'Desafío extremo', 'Un ejercicio de mecanografía muy desafiante.'),
(3, 'criptografía avanzada', 6, 90, 0, 'Seguridad', 'Practica escribiendo palabras relacionadas con la seguridad informática.');


------

--Lessons metrics

INSERT INTO lesson_metrics (lesson_id, student_user_id, time_taken, mistakes, accuracy_rate, pulsation_per_minute, is_complete) VALUES
(1, 1, 60, 3, 95.0, 70, 1),
(2, 2, 90, 5, 90.0, 60, 1),
(3, 3, 120, 7, 85.0, 50, 1),
(4, 4, 80, 2, 97.5, 75, 1),
(5, 5, 100, 4, 92.5, 65, 1);

INSERT INTO lesson_metrics (lesson_id, student_user_id, time_taken, mistakes, accuracy_rate, pulsation_per_minute, is_complete) VALUES
(2, 1, 75, 4, 92.0, 68, 1),
(1, 2, 80, 6, 88.0, 55, 1),
(3, 3, 110, 8, 82.5, 45, 1),
(4, 4, 70, 3, 96.0, 72, 1),
(5, 5, 95, 5, 90.5, 63, 1),
(1, 11, 70, 2, 97.5, 73, 1),
(2, 12, 85, 5, 91.0, 62, 1),
(3, 13, 105, 7, 86.5, 52, 1),
(4, 14, 65, 4, 93.0, 76, 1),
(5, 15, 90, 6, 89.0, 66, 1);


-----

--group_class

INSERT INTO group_class (next_lesson_id, name, group_code)
VALUES
(1, 'Grupo A', CONCAT('GR', FLOOR(RAND() * 10000))),
(2, 'Grupo B', CONCAT('GR', FLOOR(RAND() * 10000))),
(3, 'Grupo C', CONCAT('GR', FLOOR(RAND() * 10000))),
(4, 'Grupo D', CONCAT('GR', FLOOR(RAND() * 10000))),
(5, 'Grupo E', CONCAT('GR', FLOOR(RAND() * 10000)));



------

--group_date

INSERT INTO group_date (group_id, hour, day) VALUES
(1, '09:00:00', 'Lunes'),
(1, '09:00:00', 'Miércoles'),
(2, '10:30:00', 'Martes'),
(2, '10:30:00', 'Jueves'),
(3, '12:00:00', 'Miércoles'),
(3, '12:00:00', 'Viernes'),
(4, '13:30:00', 'Jueves'),
(4, '13:30:00', 'Sábado'),
(5, '15:00:00', 'Viernes'),
(5, '15:00:00', 'Domingo');


-----
--group_student

INSERT INTO group_student (group_id, student_user_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(1, 6),
(2, 7),
(3, 8),
(4, 9),
(5, 10);


-------------

--group_teacher

INSERT INTO group_teacher (group_id, teacher_user_id) VALUES
(1, 12),
(2, 13),
(3, 14),
(4, 15),
(5, 11);















