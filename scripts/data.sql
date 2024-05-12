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
(1, 'ff jj', 5, 420, 5, 'Lección 1', 'En esta lección de mecanografía, practicarás la combinación "ff jj" para mejorar tu velocidad y precisión en la escritura.'),
(1, 'fj jf', 6, 420, 5, 'Lección 2', 'Esta lección de mecanografía se enfoca en la secuencia "fj jf", permitiéndote fortalecer tu habilidad de escritura.'),
(1, 'ffj jjf', 4, 420, 5, 'Lección 3', 'Practica la secuencia "ffj jjf" en esta lección de mecanografía para mejorar tu destreza en el teclado.'),
(1, 'dd kk', 5, 420, 5, 'Lección 4', 'Mejora tu velocidad y precisión escribiendo la combinación "dd kk" en esta lección de mecanografía.'),
(1, 'dk kd', 6, 420, 5, 'Lección 5', 'En esta lección de mecanografía, explorarás diferentes usos de la combinación "dk kd" para perfeccionar tu habilidad en el teclado.'),
(1, 'ddk kkd', 4, 420, 5, 'Lección 6', 'Fortalece tu destreza en mecanografía practicando la combinación "ddk kkd" en esta lección.'),
(1, 'ss ll', 5, 420, 5, 'Lección 7', 'Practica la combinación "ss ll" en esta lección de mecanografía para mejorar tu velocidad y precisión en la escritura.'),
(1, 'sl ls', 6, 420, 5, 'Lección 8', 'Esta lección de mecanografía se enfoca en la secuencia "sl ls", ayudándote a aumentar tu velocidad de escritura.'),
(1, 'ssl lls', 4, 420, 5, 'Lección 9', 'Descubre las diferentes combinaciones de letras "ssl lls" en esta lección de mecanografía, mejorando tu habilidad en el teclado.'),
(1, 'aa ññ', 5, 420, 5, 'Lección 10', 'Mejora tu habilidad en mecanografía escribiendo la combinación "aa ññ" en esta lección diseñada para aumentar tu velocidad.'),
(1, 'añ ña', 6, 420, 5, 'Lección 11', 'En esta lección de mecanografía, practicarás la secuencia "añ ña" para perfeccionar tu técnica en el teclado.'),
(1, 'aañ ñña', 4, 420, 5, 'Lección 12', 'Fortalece tu destreza en mecanografía practicando la secuencia "aañ ñña" en esta lección diseñada para mejorar tu velocidad y precisión.'),
(2, 'ala ala ala las las las', 3, 420, 5, 'Lección 13', 'En esta lección de mecanografía, explorarás la secuencia "ala ala ala las las las" para mejorar tu velocidad y precisión en la escritura.'),
(2, 'das das das aja aja aja', 3, 420, 5, 'Lección 14', 'Practica la combinación "das das das aja aja aja" en esta lección de mecanografía para fortalecer tu habilidad en el teclado.'),
(2, 'aña aña aña kak kak kak', 3, 420, 5, 'Lección 15', 'Mejora tu habilidad en mecanografía escribiendo la secuencia "aña aña aña kak kak kak" en esta lección diseñada para aumentar tu velocidad.'),
(2, 'fal fal fal aña aña aña', 3, 420, 5, 'Lección 16', 'En esta lección de mecanografía, explorarás diferentes combinaciones de letras "fal fal fal aña aña aña" para mejorar tu destreza en el teclado.'),
(2, 'saña saña', 3, 420, 5, 'Lección 17', 'Descubre las diferentes combinaciones de letras "saña saña" en esta lección de mecanografía, fortaleciendo tu habilidad en el teclado.'),
(3, 'falda falda', 3, 420, 5, 'Lección 18', 'Practica la secuencia "falda falda" en esta lección de mecanografía para mejorar tu velocidad y precisión en la escritura.'),
(3, 'falda falda jaka jaka', 3, 420, 5, 'Lección 19', 'Practica la secuencia "falda falda jaka jaka" en esta lección de mecanografía para mejorar tu velocidad y precisión en la escritura.'),
(3, 'salda salda salsa salsa', 3, 420, 5, 'Lección 20', 'Practica la secuencia "salsa salda salsa salsa" en esta lección de mecanografía para mejorar tu velocidad y precisión en la escritura.'),
(3, 'dasa dasa sada sada', 3, 420, 5, 'Lección 21', 'Practica la secuencia "dasa dasa sada sada" en esta lección de mecanografía para mejorar tu velocidad y precisión en la escritura.');


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
(2, '10:30:00', 'Martes'),
(3, '12:00:00', 'Miércoles'),
(4, '13:30:00', 'Jueves'),
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

