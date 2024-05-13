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

-- Tipos de usuario

INSERT INTO user_type (name) VALUES ('Estudiante');
INSERT INTO user_type (name) VALUES ('Tutor');