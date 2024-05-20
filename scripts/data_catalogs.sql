-- Country
INSERT INTO country (name) VALUES ('Costa Rica');

-- Provinces

INSERT INTO province (country_id, name) VALUES (1, 'San José');
INSERT INTO province (country_id, name) VALUES (1, 'Alajuela');
INSERT INTO province (country_id, name) VALUES (1, 'Cartago');
INSERT INTO province (country_id, name) VALUES (1, 'Heredia');
INSERT INTO province (country_id, name) VALUES (1, 'Guanacaste');
INSERT INTO province (country_id, name) VALUES (1, 'Puntarenas');
INSERT INTO province (country_id, name) VALUES (1, 'Limón');

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


-- Instituciones

INSERT INTO institution (district_id, name) VALUES (1, 'Escuela Padre Peralta');
INSERT INTO institution (district_id, name) VALUES (2, 'Escuela de los Angeles');
INSERT INTO institution (district_id, name) VALUES (3, 'Escuela Nuestra Señora de Fátima');
INSERT INTO institution (district_id, name) VALUES (4, 'Escuela de Quircot');
INSERT INTO institution (district_id, name) VALUES (1, 'Escuela el Bosque');
INSERT INTO institution (district_id, name) VALUES (3, 'Colegio San Luis Gonzaga');
INSERT INTO institution (district_id, name) VALUES (3, 'Instituto Tecnológico de Costa Rica');

-- Tipos de usuario

INSERT INTO user_type (name) VALUES ('Estudiante');
INSERT INTO user_type (name) VALUES ('Tutor');

-- Level
INSERT INTO level (name) VALUES
('Nivel 1'),
('Nivel 2'),
('Nivel 3'),
('Nivel 4');

-- Lessons

INSERT INTO lesson (level_id, words, min_time, min_mistakes, name, description) VALUES
(1, 'ff jj', 420, 5, 'Lección 1', 'En esta lección de mecanografía, practicarás la combinación "ff jj" para mejorar tu velocidad y precisión en la escritura.'),
(1, 'fj jf', 420, 5, 'Lección 2', 'Esta lección de mecanografía se enfoca en la secuencia "fj jf", permitiéndote fortalecer tu habilidad de escritura.'),
(1, 'ffj jjf', 420, 5, 'Lección 3', 'Practica la secuencia "ffj jjf" en esta lección de mecanografía para mejorar tu destreza en el teclado.'),
(1, 'dd kk', 420, 5, 'Lección 4', 'Mejora tu velocidad y precisión escribiendo la combinación "dd kk" en esta lección de mecanografía.'),
(1, 'dk kd', 420, 5, 'Lección 5', 'En esta lección de mecanografía, explorarás diferentes usos de la combinación "dk kd" para perfeccionar tu habilidad en el teclado.'),
(1, 'ddk kkd', 420, 5, 'Lección 6', 'Fortalece tu destreza en mecanografía practicando la combinación "ddk kkd" en esta lección.'),
(1, 'ss ll', 420, 5, 'Lección 7', 'Practica la combinación "ss ll" en esta lección de mecanografía para mejorar tu velocidad y precisión en la escritura.'),
(1, 'sl ls', 420, 5, 'Lección 8', 'Esta lección de mecanografía se enfoca en la secuencia "sl ls", ayudándote a aumentar tu velocidad de escritura.'),
(1, 'ssl lls', 420, 5, 'Lección 9', 'Descubre las diferentes combinaciones de letras "ssl lls" en esta lección de mecanografía, mejorando tu habilidad en el teclado.'),
(1, 'aa ññ', 420, 5, 'Lección 10', 'Mejora tu habilidad en mecanografía escribiendo la combinación "aa ññ" en esta lección diseñada para aumentar tu velocidad.'),
(1, 'añ ña', 420, 5, 'Lección 11', 'En esta lección de mecanografía, practicarás la secuencia "añ ña" para perfeccionar tu técnica en el teclado.'),
(1, 'aañ ñña', 420, 5, 'Lección 12', 'Fortalece tu destreza en mecanografía practicando la secuencia "aañ ñña" en esta lección diseñada para mejorar tu velocidad y precisión.'),
(2, 'ala ala ala las las las', 420, 5, 'Lección 13', 'En esta lección de mecanografía, explorarás la secuencia "ala ala ala las las las" para mejorar tu velocidad y precisión en la escritura.'),
(2, 'das das das aja aja aja', 420, 5, 'Lección 14', 'Practica la combinación "das das das aja aja aja" en esta lección de mecanografía para fortalecer tu habilidad en el teclado.'),
(2, 'aña aña aña kak kak kak', 420, 5, 'Lección 15', 'Mejora tu habilidad en mecanografía escribiendo la secuencia "aña aña aña kak kak kak" en esta lección diseñada para aumentar tu velocidad.'),
(2, 'fal fal fal aña aña aña', 420, 5, 'Lección 16', 'En esta lección de mecanografía, explorarás diferentes combinaciones de letras "fal fal fal aña aña aña" para mejorar tu destreza en el teclado.'),
(2, 'saña saña', 420, 5, 'Lección 17', 'Descubre las diferentes combinaciones de letras "saña saña" en esta lección de mecanografía, fortaleciendo tu habilidad en el teclado.'),
(3, 'falda falda', 420, 5, 'Lección 18', 'Practica la secuencia "falda falda" en esta lección de mecanografía para mejorar tu velocidad y precisión en la escritura.'),
(3, 'falda falda jaka jaka', 420, 5, 'Lección 19', 'Practica la secuencia "falda falda jaka jaka" en esta lección de mecanografía para mejorar tu velocidad y precisión en la escritura.'),
(3, 'salda salda salsa salsa', 420, 5, 'Lección 20', 'Practica la secuencia "salsa salda salsa salsa" en esta lección de mecanografía para mejorar tu velocidad y precisión en la escritura.'),
(3, 'dasa dasa sada sada', 420, 5, 'Lección 21', 'Practica la secuencia "dasa dasa sada sada" en esta lección de mecanografía para mejorar tu velocidad y precisión en la escritura.');