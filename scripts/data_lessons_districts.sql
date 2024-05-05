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
INSERT INTO district (canton_id, name) VALUES (2, 'Carmen');
INSERT INTO district (canton_id, name) VALUES (2, 'Corralillo');
INSERT INTO district (canton_id, name) VALUES (2, 'Dulce Nombre');
INSERT INTO district (canton_id, name) VALUES (2, 'Guadalupe');
INSERT INTO district (canton_id, name) VALUES (2, 'Lourdes');
INSERT INTO district (canton_id, name) VALUES (2, 'Occidental');
INSERT INTO district (canton_id, name) VALUES (2, 'Oriental');
INSERT INTO district (canton_id, name) VALUES (2, 'Quebradilla');


-- Lessons

INSERT INTO leccion (level_id, words, iterations, min_time, min_mistakes, name, description) VALUES
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
(1, 'saña', 39, 420, 5, 'Saña Lección', 'Practica la palabra "saña" en esta lección de mecanografía para mejorar tu velocidad y precisión en la escritura.')



