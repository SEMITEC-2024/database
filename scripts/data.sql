-- Country

INSERT INTO country (name) VALUES ('Costa Rica');
-- select * from district;
-- select * from user_type;
-- select * from institution;

-- Provinces

INSERT INTO province (country_id, name) VALUES (1, 'San José');
INSERT INTO province (country_id, name) VALUES (1, 'Alajuela');
INSERT INTO province (country_id, name) VALUES (1, 'Cartago');
INSERT INTO province (country_id, name) VALUES (1, 'Heredia');
INSERT INTO province (country_id, name) VALUES (1, 'Guanacaste');
INSERT INTO province (country_id, name) VALUES (1, 'Puntarenas');
INSERT INTO province (country_id, name) VALUES (1, 'Limón');


-----------

-- Cantons

INSERT INTO canton (province_id, name) VALUES (3, 'Alvarado');
INSERT INTO canton (province_id, name) VALUES (3, 'Cartago');
INSERT INTO canton (province_id, name) VALUES (3, 'El Guarco');
INSERT INTO canton (province_id, name) VALUES (3, 'Jiménez');
INSERT INTO canton (province_id, name) VALUES (3, 'La Unión');
INSERT INTO canton (province_id, name) VALUES (3, 'Oreamuno');
INSERT INTO canton (province_id, name) VALUES (3, 'Paraíso');
INSERT INTO canton (province_id, name) VALUES (3, 'Turrialba');

-- Districts

-- Alvarado
INSERT INTO district (canton_id, name) VALUES (1, 'Pacayas'), (1, 'Cervantes'), (1, 'Capellades');

-- El Guarco
INSERT INTO district (canton_id, name) VALUES (3, 'El Tejar'), (3, 'San Isidro'), (3, 'Tobosi'), (3, 'Patio de Agua');

-- Jimenez
INSERT INTO district (canton_id, name) VALUES (4, 'Juan Viñas'), (4, 'Tucurrique'), (4, 'Pejibaye'), (4, 'La Victoria');

-- La Unión
INSERT INTO district (canton_id, name) VALUES 
(5, 'Tres Ríos'), 
(5, 'San Juan'), 
(5, 'San Ramón'), 
(5, 'Dulce Nombre'), 
(5, 'Concepción'), 
(5, 'San Rafael'), 
(5, 'Río Azul'), 
(5, 'San Diego');

-- Oreamuno
INSERT INTO district (canton_id, name) VALUES 
(6, 'San Rafael'), 
(6, 'Cot'), 
(6, 'Potrero Cerrado'), 
(6, 'Cipreses'), 
(6, 'Santa Rosa');

-- Paraiso
INSERT INTO district (canton_id, name) VALUES 
(7, 'Cachí'), 
(7, 'Llanos de Santa Lucía'), 
(7, 'Orosi'), 
(7, 'Paraíso'), 
(7, 'Santiago');

-- Turrialba
INSERT INTO district (canton_id, name) VALUES 
(8, 'La Suiza'), 
(8, 'Peralta'), 
(8, 'Santa Cruz'), 
(8, 'Sana Teresita'), 
(8, 'Pavones'),
(8, 'Tuis'), 
(8, 'Tayuticy'), 
(8, 'Santa Rosa'), 
(8, 'Chirripó'), 
(8, 'La Isabel'),
(8, 'Tres Equis');

-- Cartago
INSERT INTO district (canton_id, name) VALUES (3, 'Carmen');
INSERT INTO district (canton_id, name) VALUES (3, 'Corralillo');
INSERT INTO district (canton_id, name) VALUES (3, 'Dulce Nombre');
INSERT INTO district (canton_id, name) VALUES (3, 'Guadalupe');
INSERT INTO district (canton_id, name) VALUES (3, 'Lourdes');
INSERT INTO district (canton_id, name) VALUES (3, 'Occidental');
INSERT INTO district (canton_id, name) VALUES (3, 'Oriental');
INSERT INTO district (canton_id, name) VALUES (3, 'Quebradilla');

------------

-- Instituciones

INSERT INTO institution (district_id, name) VALUES (1, 'Escuela Padre Peralta');
INSERT INTO institution (district_id, name) VALUES (2, 'Escuela de los Angeles');
INSERT INTO institution (district_id, name) VALUES (3, 'Escuela Nuestra Señora de Fátima');
INSERT INTO institution (district_id, name) VALUES (4, 'Escuela de Quircot');
INSERT INTO institution (district_id, name) VALUES (1, 'Escuela el Bosque');
INSERT INTO institution (district_id, name) VALUES (3, 'Colegio San Luis Gonzaga');


-- Tipos de usuario


INSERT INTO user_type (name) VALUES ('Estudiante');
INSERT INTO user_type (name) VALUES ('Tutor');


----------------------------

-- Estudiantes
INSERT INTO user (user_type_id, institution_id, district_id, user_code, password, email, name, salt)
VALUES 
    (1, 1, 1, 'adwf', '1234', 'jose.perez@estudiantec.cr', 'José Pérez', 'hola'),
    (1, 2, 2,'as3d', '1234', 'laura.gonzalez@estudiantec.cr', 'Laura González', 'hola'),
    (1, 3, 3,'asdf9', '1234', 'pedro.castro@estudiantec.cr', 'Pedro Castro', 'hola'),
    (1, 4, 4,'asdf8', '1234', 'maria.ramirez@estudiantec.cr', 'María Ramírez', 'hola'),
    (1, 5, 1,'asdpf6', '1234', 'carlos.lopez@estudiantec.cr', 'Carlos López', 'hola'),
    (1, 1, 1,'asdf5', '1234', 'andrea.martinez@estudiantec.cr', 'Andrea Martínez', 'hola'),
    (1, 2, 2,'asdf4', '1234', 'juan.gomez@estudiantec.cr', 'Juan Gómez', 'hola'),
    (1, 3, 3,'asdf3', '1234', 'lucia.sanchez@estudiantec.cr', 'Lucía Sánchez', 'hola'),
    (1, 4, 4,'asdf2', '1234', 'sergio.hernandez@estudiantec.cr', 'Sergio Hernández', 'hola'),
    (1, 5, 1,'asdf1', '1234', 'daniela.ruiz@estudiantec.cr', 'Daniela Ruiz', 'hola');


-- Tutores
INSERT INTO user (user_type_id, institution_id, district_id, user_code, password, email, name, salt)
VALUES 
    (2, 1, 1,'asddwf',  '1234', 'ana.gonzalez@estudiantec.cr', 'Ana González', 'nonga'),
    (2, 2, 2,'adwsf',  '1234', 'pedro.martinez@estudiantec.cr', 'Pedro Martínez', 'nonga'),
    (2, 3, 3, 'addwf', '1234', 'luisa.ruiz@estudiantec.cr', 'Luisa Ruiz', 'nonga'),
    (2, 4, 4,'adwfu',  '1234', 'juan.gomez@estudiantec.cr', 'Juan Gómez', 'nonga'),
    (2, 5, 1,'adwqf',  '1234', 'maria.perez@estudiantec.cr', 'María Pérez', 'nonga');




-----

-- Level

INSERT INTO level (name) VALUES
('Fácil'),
('Medio'),
('Difícil');


-- Lessons

INSERT INTO lesson (level_id, words, iterations, min_time, min_mistakes, name, description) VALUES
(1, 'fasa', 39, 420, 5, 'Fasa Lección', 'En esta lección de mecanografía, practicarás la palabra "fasa" para mejorar tu velocidad y precisión en la escritura.'),
(1, 'tuyo', 50, 420, 5, 'Tuyo Lección', 'Esta lección de mecanografía se enfoca en la palabra "tuyo", permitiéndote fortalecer tu habilidad de escritura.'),
(1, 'daña', 39, 420, 5, 'Daña Lección', 'Practica la palabra "daña" en esta lección de mecanografía para mejorar tu destreza en el teclado.'),
(1, 'awertr ñoiuyu ', 20, 420, 5, 'Awertr Lección', 'Mejora tu velocidad y precisión escribiendo la palabra "awertr ñoiuyu " en esta lección de mecanografía.'),
(1, 'peri', 39, 420, 5, 'Peri Lección', 'En esta lección de mecanografía, explorarás diferentes usos de la palabra "peri" para perfeccionar tu habilidad en el teclado.'),
(1, 'pito', 39, 420, 5, 'Pito Lección', 'Fortalece tu destreza en mecanografía practicando la palabra "pito" en esta lección.'),
(1, 'safa', 39, 420, 5, 'Safa Lección', 'Practica la palabra "safa" en esta lección de mecanografía para mejorar tu velocidad y precisión en la escritura.'),
(1, 'rewa uioñ', 30, 420, 5, 'Rewa Lección', 'Esta lección de mecanografía se enfoca en la palabra "rewa uioñ", ayudándote a aumentar tu velocidad de escritura.'),
(1, 'trio', 39, 420, 5, 'Trio Lección', 'Descubre las diferentes aplicaciones de la palabra "trio" en esta lección de mecanografía, mejorando tu habilidad en el teclado.'),
(1, 'jalada', 36, 420, 5, 'Jalada Lección', 'Mejora tu habilidad en mecanografía escribiendo la palabra "jalada" en esta lección diseñada para aumentar tu velocidad.'),
(1, 'gadasa', 40, 420, 5, 'Gadasa Lección', 'En esta lección de mecanografía, practicarás la palabra "gadasa" para perfeccionar tu técnica en el teclado.'),
(1, 'alkaja', 45, 420, 5, 'Alkaja Lección', 'Fortalece tu destreza en mecanografía practicando la palabra "alkaja" en esta lección diseñada para mejorar tu velocidad y precisión.'),
(1, 'asdfgf ñlkjhj ', 20, 420, 5, 'Asdfgf Lección', 'En esta lección de mecanografía, explorarás la palabra "asdfgf ñlkjhj " para mejorar tu velocidad y precisión en la escritura.'),
(1, 'sala', 39, 420, 5, 'Sala Lección', 'Practica la palabra "sala" en esta lección de mecanografía para fortalecer tu habilidad en el teclado.'),
(1, 'dala', 39, 420, 5, 'Dala Lección', 'Mejora tu habilidad en mecanografía escribiendo la palabra "dala" en esta lección diseñada para aumentar tu velocidad.'),
(1, 'kalaña', 45, 420, 5, 'Kalaña Lección', 'En esta lección de mecanografía, explorarás diferentes usos de la palabra "kalaña" para mejorar tu destreza en el teclado.'),
(1, 'fgfdsa jklñ', 20, 420, 5, 'Jklñ Lección', 'Descubre las diferentes aplicaciones de la palabra "jklñ" en esta lección de mecanografía, fortaleciendo tu habilidad en el teclado.'),
(1, 'saña', 39, 420, 5, 'Saña Lección', 'Practica la palabra "saña" en esta lección de mecanografía para mejorar tu velocidad y precisión en la escritura.');

-- Lessons metrics

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


-- group_class

INSERT INTO group_class (next_lesson_id, name, group_code)
VALUES
(1, 'Grupo A', CONCAT('GR', FLOOR(RAND() * 10000))),
(2, 'Grupo B', CONCAT('GR', FLOOR(RAND() * 10000))),
(3, 'Grupo C', CONCAT('GR', FLOOR(RAND() * 10000))),
(4, 'Grupo D', CONCAT('GR', FLOOR(RAND() * 10000))),
(5, 'Grupo E', CONCAT('GR', FLOOR(RAND() * 10000)));


-- group_date

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

-- group_student

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


-- group_teacher

INSERT INTO group_teacher (group_id, teacher_user_id) VALUES
(1, 12),
(2, 13),
(3, 14),
(4, 15),
(5, 11);