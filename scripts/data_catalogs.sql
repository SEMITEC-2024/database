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

-- Cantons Cartago

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

-- Cantones San Jose
INSERT INTO canton (province_id, name) VALUES (1, 'San José');
INSERT INTO canton (province_id, name) VALUES (1, 'Escazú');
INSERT INTO canton (province_id, name) VALUES (1, 'Desamparados');
INSERT INTO canton (province_id, name) VALUES (1, 'Puriscal');
INSERT INTO canton (province_id, name) VALUES (1, 'Tarrazú');
INSERT INTO canton (province_id, name) VALUES (1, 'Aserrí');
INSERT INTO canton (province_id, name) VALUES (1, 'Mora');
INSERT INTO canton (province_id, name) VALUES (1, 'Goicoechea');
INSERT INTO canton (province_id, name) VALUES (1, 'Santa Ana');
INSERT INTO canton (province_id, name) VALUES (1, 'Alajuelita');
INSERT INTO canton (province_id, name) VALUES (1, 'Vázquez de Coronado');
INSERT INTO canton (province_id, name) VALUES (1, 'Acosta');
INSERT INTO canton (province_id, name) VALUES (1, 'Tibás');
INSERT INTO canton (province_id, name) VALUES (1, 'Moravia');
INSERT INTO canton (province_id, name) VALUES (1, 'Montes de Oca');
INSERT INTO canton (province_id, name) VALUES (1, 'Turrubares');
INSERT INTO canton (province_id, name) VALUES (1, 'Dota');
INSERT INTO canton (province_id, name) VALUES (1, 'Curridabat');
INSERT INTO canton (province_id, name) VALUES (1, 'Pérez Zeledón');
INSERT INTO canton (province_id, name) VALUES (1, 'León Cortés');

--  Distritos San Jose

INSERT INTO district (canton_id, name) VALUES (9, 'Carmen');
INSERT INTO district (canton_id, name) VALUES (9, 'Merced');
INSERT INTO district (canton_id, name) VALUES (9, 'Hospital');
INSERT INTO district (canton_id, name) VALUES (9, 'Catedral');
INSERT INTO district (canton_id, name) VALUES (9, 'Zapote');
INSERT INTO district (canton_id, name) VALUES (9, 'San Francisco de Dos Ríos');
INSERT INTO district (canton_id, name) VALUES (9, 'Uruca');
INSERT INTO district (canton_id, name) VALUES (9, 'Mata Redonda');
INSERT INTO district (canton_id, name) VALUES (9, 'Pavas');
INSERT INTO district (canton_id, name) VALUES (9, 'Hatillo');
INSERT INTO district (canton_id, name) VALUES (9, 'San Sebastián');
INSERT INTO district (canton_id, name) VALUES (9, 'San Marcos');
INSERT INTO district (canton_id, name) VALUES (9, 'San Pedro');
INSERT INTO district (canton_id, name) VALUES (9, 'San Juan de Mata');
INSERT INTO district (canton_id, name) VALUES (9, 'San Rafael');
INSERT INTO district (canton_id, name) VALUES (9, 'San Jerónimo');
INSERT INTO district (canton_id, name) VALUES (9, 'Río Oro');

-- Distritos Escazú
INSERT INTO district (canton_id, name) VALUES (10, 'Escazú');
INSERT INTO district (canton_id, name) VALUES (10, 'San Antonio');
INSERT INTO district (canton_id, name) VALUES (10, 'San Rafael');

-- Distritos de Desamparados
INSERT INTO district (canton_id, name) VALUES (11, 'Desamparados');
INSERT INTO district (canton_id, name) VALUES (11, 'San Miguel');
INSERT INTO district (canton_id, name) VALUES (11, 'San Juan de Dios');
INSERT INTO district (canton_id, name) VALUES (11, 'San Rafael Arriba');
INSERT INTO district (canton_id, name) VALUES (11, 'San Rafael Abajo');
INSERT INTO district (canton_id, name) VALUES (11, 'Gravilias');
INSERT INTO district (canton_id, name) VALUES (11, 'Los Guido');

-- Distritos de Puriscal
INSERT INTO district (canton_id, name) VALUES (12, 'Santiago');
INSERT INTO district (canton_id, name) VALUES (12, 'Mercedes Sur');
INSERT INTO district (canton_id, name) VALUES (12, 'Barbacoas');
INSERT INTO district (canton_id, name) VALUES (12, 'Grifo Alto');
INSERT INTO district (canton_id, name) VALUES (12, 'San Rafael');
INSERT INTO district (canton_id, name) VALUES (12, 'Candelarita');
INSERT INTO district (canton_id, name) VALUES (12, 'Desamparaditos');
INSERT INTO district (canton_id, name) VALUES (12, 'San Antonio');
INSERT INTO district (canton_id, name) VALUES (12, 'Chires');

-- Distritos de Tarrazú
INSERT INTO district (canton_id, name) VALUES (13, 'San Marcos');
INSERT INTO district (canton_id, name) VALUES (13, 'San Lorenzo');
INSERT INTO district (canton_id, name) VALUES (13, 'San Carlos');

-- Distritos de Aserrí
INSERT INTO district (canton_id, name) VALUES (14, 'Aserrí');
INSERT INTO district (canton_id, name) VALUES (14, 'Tarbaca');
INSERT INTO district (canton_id, name) VALUES (14, 'Vuelta de Jorco');
INSERT INTO district (canton_id, name) VALUES (14, 'San Gabriel');
INSERT INTO district (canton_id, name) VALUES (14, 'Legua');
INSERT INTO district (canton_id, name) VALUES (14, 'Monterrey');
INSERT INTO district (canton_id, name) VALUES (14, 'Salitrillos');

-- Distritos de Mora
INSERT INTO district (canton_id, name) VALUES (15, 'Colón');
INSERT INTO district (canton_id, name) VALUES (15, 'Guayabo');
INSERT INTO district (canton_id, name) VALUES (15, 'Tabarcia');
INSERT INTO district (canton_id, name) VALUES (15, 'Piedras Negras');
INSERT INTO district (canton_id, name) VALUES (15, 'Picagres');
INSERT INTO district (canton_id, name) VALUES (15, 'Jaris');

-- Distritos de Goicoechea
INSERT INTO district (canton_id, name) VALUES (16, 'Guadalupe');
INSERT INTO district (canton_id, name) VALUES (16, 'San Francisco');
INSERT INTO district (canton_id, name) VALUES (16, 'Calle Blancos');
INSERT INTO district (canton_id, name) VALUES (16, 'Mata de Plátano');
INSERT INTO district (canton_id, name) VALUES (16, 'Ipís');
INSERT INTO district (canton_id, name) VALUES (16, 'Rancho Redondo');
INSERT INTO district (canton_id, name) VALUES (16, 'Purral');

-- Distritos de Santa Ana
INSERT INTO district (canton_id, name) VALUES (17, 'Santa Ana');
INSERT INTO district (canton_id, name) VALUES (17, 'Salitral');
INSERT INTO district (canton_id, name) VALUES (17, 'Pozos');
INSERT INTO district (canton_id, name) VALUES (17, 'Uruca');
INSERT INTO district (canton_id, name) VALUES (17, 'Piedades');
INSERT INTO district (canton_id, name) VALUES (17, 'Brasil');

-- Distritos de Alajuelita
INSERT INTO district (canton_id, name) VALUES (18, 'Alajuelita');
INSERT INTO district (canton_id, name) VALUES (18, 'San Josecito');
INSERT INTO district (canton_id, name) VALUES (18, 'San Antonio');
INSERT INTO district (canton_id, name) VALUES (18, 'Concepción');
INSERT INTO district (canton_id, name) VALUES (18, 'San Felipe');

-- Distritos de Vázquez de Coronado
INSERT INTO district (canton_id, name) VALUES (19, 'San Isidro');
INSERT INTO district (canton_id, name) VALUES (19, 'San Rafael');
INSERT INTO district (canton_id, name) VALUES (19, 'Dulce Nombre de Jesús');
INSERT INTO district (canton_id, name) VALUES (19, 'Patalillo');
INSERT INTO district (canton_id, name) VALUES (19, 'Cascajal');

-- Distritos de Acosta
INSERT INTO district (canton_id, name) VALUES (20, 'San Ignacio');
INSERT INTO district (canton_id, name) VALUES (20, 'Guaitil');
INSERT INTO district (canton_id, name) VALUES (20, 'Palmichal');
INSERT INTO district (canton_id, name) VALUES (20, 'Cangrejal');
INSERT INTO district (canton_id, name) VALUES (20, 'Sabanillas');

-- Distritos de Tibás
INSERT INTO district (canton_id, name) VALUES (21, 'San Juan');
INSERT INTO district (canton_id, name) VALUES (21, 'Cinco Esquinas');
INSERT INTO district (canton_id, name) VALUES (21, 'Anselmo Llorente');
INSERT INTO district (canton_id, name) VALUES (21, 'León XIII');
INSERT INTO district (canton_id, name) VALUES (21, 'Colima');

-- Distritos de Moravia
INSERT INTO district (canton_id, name) VALUES (22, 'San Vicente');
INSERT INTO district (canton_id, name) VALUES (22, 'San Jerónimo');
INSERT INTO district (canton_id, name) VALUES (22, 'Trinidad');

-- Distritos de Montes de Oca
INSERT INTO district (canton_id, name) VALUES (23, 'San Pedro');
INSERT INTO district (canton_id, name) VALUES (23, 'Sabanilla');
INSERT INTO district (canton_id, name) VALUES (23, 'Mercedes');
INSERT INTO district (canton_id, name) VALUES (23, 'San Rafael');

-- Distritos de Turrubares
INSERT INTO district (canton_id, name) VALUES (24, 'San Pablo');
INSERT INTO district (canton_id, name) VALUES (24, 'San Pedro');
INSERT INTO district (canton_id, name) VALUES (24, 'San Juan de Mata');
INSERT INTO district (canton_id, name) VALUES (24, 'San Luis');
INSERT INTO district (canton_id, name) VALUES (24, 'Carara');

-- Distritos de Dota
INSERT INTO district (canton_id, name) VALUES (25, 'Santa María');
INSERT INTO district (canton_id, name) VALUES (25, 'Jardín');
INSERT INTO district (canton_id, name) VALUES (25, 'Copey');

-- Distritos de Curridabat
INSERT INTO district (canton_id, name) VALUES (26, 'Curridabat');
INSERT INTO district (canton_id, name) VALUES (26, 'Granadilla');
INSERT INTO district (canton_id, name) VALUES (26, 'Sánchez');
INSERT INTO district (canton_id, name) VALUES (26, 'Tirrases');

-- Distritos de Pérez Zeledón
INSERT INTO district (canton_id, name) VALUES (27, 'San Isidro de El General');
INSERT INTO district (canton_id, name) VALUES (27, 'El General');
INSERT INTO district (canton_id, name) VALUES (27, 'Daniel Flores');
INSERT INTO district (canton_id, name) VALUES (27, 'Rivas');
INSERT INTO district (canton_id, name) VALUES (27, 'San Pedro');
INSERT INTO district (canton_id, name) VALUES (27, 'Platanares');
INSERT INTO district (canton_id, name) VALUES (27, 'Pejibaye');
INSERT INTO district (canton_id, name) VALUES (27, 'Cajón');
INSERT INTO district (canton_id, name) VALUES (27, 'Barú');
INSERT INTO district (canton_id, name) VALUES (27, 'Río Nuevo');
INSERT INTO district (canton_id, name) VALUES (27, 'Páramo');

-- Distritos de León Cortés
INSERT INTO district (canton_id, name) VALUES (28, 'San Pablo');
INSERT INTO district (canton_id, name) VALUES (28, 'San Andrés');
INSERT INTO district (canton_id, name) VALUES (28, 'Llano Bonito');
INSERT INTO district (canton_id, name) VALUES (28, 'San Isidro');
INSERT INTO district (canton_id, name) VALUES (28, 'Santa Cruz');
INSERT INTO district (canton_id, name) VALUES (28, 'San Antonio');

-- Cantones de Alajuela
INSERT INTO canton (province_id, name) VALUES (2, 'Alajuela');
INSERT INTO canton (province_id, name) VALUES (2, 'San Ramón');
INSERT INTO canton (province_id, name) VALUES (2, 'Grecia');
INSERT INTO canton (province_id, name) VALUES (2, 'San Mateo');
INSERT INTO canton (province_id, name) VALUES (2, 'Atenas');
INSERT INTO canton (province_id, name) VALUES (2, 'Naranjo');
INSERT INTO canton (province_id, name) VALUES (2, 'Palmares');
INSERT INTO canton (province_id, name) VALUES (2, 'Poás');
INSERT INTO canton (province_id, name) VALUES (2, 'Orotina');
INSERT INTO canton (province_id, name) VALUES (2, 'San Carlos');
INSERT INTO canton (province_id, name) VALUES (2, 'Zarcero');
INSERT INTO canton (province_id, name) VALUES (2, 'Sarchí');
INSERT INTO canton (province_id, name) VALUES (2, 'Upala');
INSERT INTO canton (province_id, name) VALUES (2, 'Los Chiles');
INSERT INTO canton (province_id, name) VALUES (2, 'Guatuso');
INSERT INTO canton (province_id, name) VALUES (2, 'Río Cuarto');

-- Distritos de Alajuela
INSERT INTO district (canton_id, name) VALUES (29, 'Alajuela');
INSERT INTO district (canton_id, name) VALUES (29, 'San José');
INSERT INTO district (canton_id, name) VALUES (29, 'Carrizal');
INSERT INTO district (canton_id, name) VALUES (29, 'San Antonio');
INSERT INTO district (canton_id, name) VALUES (29, 'Guácima');
INSERT INTO district (canton_id, name) VALUES (29, 'San Isidro');
INSERT INTO district (canton_id, name) VALUES (29, 'Sabanilla');
INSERT INTO district (canton_id, name) VALUES (29, 'San Rafael');
INSERT INTO district (canton_id, name) VALUES (29, 'Río Segundo');
INSERT INTO district (canton_id, name) VALUES (29, 'Desamparados');
INSERT INTO district (canton_id, name) VALUES (29, 'Turrúcares');
INSERT INTO district (canton_id, name) VALUES (29, 'Tambor');
INSERT INTO district (canton_id, name) VALUES (29, 'Garita');
INSERT INTO district (canton_id, name) VALUES (29, 'Sarapiquí');

-- Distritos de San Ramón
INSERT INTO district (canton_id, name) VALUES (30, 'San Ramón');
INSERT INTO district (canton_id, name) VALUES (30, 'Santiago');
INSERT INTO district (canton_id, name) VALUES (30, 'San Juan');
INSERT INTO district (canton_id, name) VALUES (30, 'Piedades Norte');
INSERT INTO district (canton_id, name) VALUES (30, 'Piedades Sur');
INSERT INTO district (canton_id, name) VALUES (30, 'San Rafael');
INSERT INTO district (canton_id, name) VALUES (30, 'San Isidro');
INSERT INTO district (canton_id, name) VALUES (30, 'Angeles');
INSERT INTO district (canton_id, name) VALUES (30, 'Alfaro');
INSERT INTO district (canton_id, name) VALUES (30, 'Volio');
INSERT INTO district (canton_id, name) VALUES (30, 'Concepción');
INSERT INTO district (canton_id, name) VALUES (30, 'Zapotal');
INSERT INTO district (canton_id, name) VALUES (30, 'Peñas Blancas');

-- Distritos de Grecia
INSERT INTO district (canton_id, name) VALUES (31, 'Grecia');
INSERT INTO district (canton_id, name) VALUES (31, 'San Isidro');
INSERT INTO district (canton_id, name) VALUES (31, 'San José');
INSERT INTO district (canton_id, name) VALUES (31, 'San Roque');
INSERT INTO district (canton_id, name) VALUES (31, 'Tacares');
INSERT INTO district (canton_id, name) VALUES (31, 'Puente de Piedra');
INSERT INTO district (canton_id, name) VALUES (31, 'Bolívar');

-- Distritos de San Mateo
INSERT INTO district (canton_id, name) VALUES (32, 'San Mateo');
INSERT INTO district (canton_id, name) VALUES (32, 'Desmonte');
INSERT INTO district (canton_id, name) VALUES (32, 'Jesús María');
INSERT INTO district (canton_id, name) VALUES (32, 'Labrador');

-- Distritos de Atenas
INSERT INTO district (canton_id, name) VALUES (33, 'Atenas');
INSERT INTO district (canton_id, name) VALUES (33, 'Jesús');
INSERT INTO district (canton_id, name) VALUES (33, 'Mercedes');
INSERT INTO district (canton_id, name) VALUES (33, 'San Isidro');
INSERT INTO district (canton_id, name) VALUES (33, 'Concepción');
INSERT INTO district (canton_id, name) VALUES (33, 'San José');
INSERT INTO district (canton_id, name) VALUES (33, 'Santa Eulalia');
INSERT INTO district (canton_id, name) VALUES (33, 'Escobal');

-- Distritos de Naranjo
INSERT INTO district (canton_id, name) VALUES (34, 'Naranjo');
INSERT INTO district (canton_id, name) VALUES (34, 'San Miguel');
INSERT INTO district (canton_id, name) VALUES (34, 'San José');
INSERT INTO district (canton_id, name) VALUES (34, 'Cirrí Sur');
INSERT INTO district (canton_id, name) VALUES (34, 'San Jerónimo');
INSERT INTO district (canton_id, name) VALUES (34, 'San Juan');
INSERT INTO district (canton_id, name) VALUES (34, 'Rosario');
INSERT INTO district (canton_id, name) VALUES (34, 'Palmitos');

-- Distritos de Palmares
INSERT INTO district (canton_id, name) VALUES (35, 'Palmares');
INSERT INTO district (canton_id, name) VALUES (35, 'Zaragoza');
INSERT INTO district (canton_id, name) VALUES (35, 'Buenos Aires');
INSERT INTO district (canton_id, name) VALUES (35, 'Santiago');
INSERT INTO district (canton_id, name) VALUES (35, 'Candelaria');
INSERT INTO district (canton_id, name) VALUES (35, 'Esquipulas');
INSERT INTO district (canton_id, name) VALUES (35, 'La Granja');

-- Distritos de Poás
INSERT INTO district (canton_id, name) VALUES (36, 'San Pedro');
INSERT INTO district (canton_id, name) VALUES (36, 'San Juan');
INSERT INTO district (canton_id, name) VALUES (36, 'San Rafael');
INSERT INTO district (canton_id, name) VALUES (36, 'Carrillos');
INSERT INTO district (canton_id, name) VALUES (36, 'Sabana Redonda');

-- Distritos de Orotina
INSERT INTO district (canton_id, name) VALUES (37, 'Orotina');
INSERT INTO district (canton_id, name) VALUES (37, 'Mastate');
INSERT INTO district (canton_id, name) VALUES (37, 'Hacienda Vieja');
INSERT INTO district (canton_id, name) VALUES (37, 'Coyolar');
INSERT INTO district (canton_id, name) VALUES (37, 'La Ceiba');

-- Distritos de San Carlos
INSERT INTO district (canton_id, name) VALUES (38, 'Quesada');
INSERT INTO district (canton_id, name) VALUES (38, 'Florencia');
INSERT INTO district (canton_id, name) VALUES (38, 'Buenavista');
INSERT INTO district (canton_id, name) VALUES (38, 'Aguas Zarcas');
INSERT INTO district (canton_id, name) VALUES (38, 'Venecia');
INSERT INTO district (canton_id, name) VALUES (38, 'Pital');
INSERT INTO district (canton_id, name) VALUES (38, 'Fortuna');
INSERT INTO district (canton_id, name) VALUES (38, 'Tigra');
INSERT INTO district (canton_id, name) VALUES (38, 'Palmera');
INSERT INTO district (canton_id, name) VALUES (38, 'Venado');
INSERT INTO district (canton_id, name) VALUES (38, 'Cutris');
INSERT INTO district (canton_id, name) VALUES (38, 'Monterrey');
INSERT INTO district (canton_id, name) VALUES (38, 'Pocosol');

-- Distritos de Zarcero
INSERT INTO district (canton_id, name) VALUES (39, 'Zarcero');
INSERT INTO district (canton_id, name) VALUES (39, 'Laguna');
INSERT INTO district (canton_id, name) VALUES (39, 'Tapezco');
INSERT INTO district (canton_id, name) VALUES (39, 'Guadalupe');
INSERT INTO district (canton_id, name) VALUES (39, 'Palmira');
INSERT INTO district (canton_id, name) VALUES (39, 'Zapote');
INSERT INTO district (canton_id, name) VALUES (39, 'Brisas');

-- Distritos de Sarchí
INSERT INTO district (canton_id, name) VALUES (40, 'Sarchí Norte');
INSERT INTO district (canton_id, name) VALUES (40, 'Sarchí Sur');
INSERT INTO district (canton_id, name) VALUES (40, 'Toro Amarillo');
INSERT INTO district (canton_id, name) VALUES (40, 'Rodríguez');

-- Distritos de Upala
INSERT INTO district (canton_id, name) VALUES (41, 'Upala');
INSERT INTO district (canton_id, name) VALUES (41, 'Aguas Claras');
INSERT INTO district (canton_id, name) VALUES (41, 'San José (Pizote)');
INSERT INTO district (canton_id, name) VALUES (41, 'Bijagua');
INSERT INTO district (canton_id, name) VALUES (41, 'Delicias');
INSERT INTO district (canton_id, name) VALUES (41, 'Dos Ríos');
INSERT INTO district (canton_id, name) VALUES (41, 'Yolillal');

-- Distritos de Los Chiles
INSERT INTO district (canton_id, name) VALUES (42, 'Los Chiles');
INSERT INTO district (canton_id, name) VALUES (42, 'Caño Negro');
INSERT INTO district (canton_id, name) VALUES (42, 'El Amparo');
INSERT INTO district (canton_id, name) VALUES (42, 'San Jorge');

-- Distritos de Guatuso
INSERT INTO district (canton_id, name) VALUES (43, 'San Rafael');
INSERT INTO district (canton_id, name) VALUES (43, 'Buenavista');
INSERT INTO district (canton_id, name) VALUES (43, 'Cote');
INSERT INTO district (canton_id, name) VALUES (43, 'Katira');

-- Distritos de Río Cuarto
INSERT INTO district (canton_id, name) VALUES (44, 'Río Cuarto');
INSERT INTO district (canton_id, name) VALUES (44, 'Santa Isabel');
INSERT INTO district (canton_id, name) VALUES (44, 'Santa Rita');

-- Cantones de Heredia
INSERT INTO canton (province_id, name) VALUES (4, 'Heredia');
INSERT INTO canton (province_id, name) VALUES (4, 'Barva');
INSERT INTO canton (province_id, name) VALUES (4, 'Santo Domingo');
INSERT INTO canton (province_id, name) VALUES (4, 'Santa Bárbara');
INSERT INTO canton (province_id, name) VALUES (4, 'San Rafael');
INSERT INTO canton (province_id, name) VALUES (4, 'San Isidro');
INSERT INTO canton (province_id, name) VALUES (4, 'Belén');
INSERT INTO canton (province_id, name) VALUES (4, 'Flores');
INSERT INTO canton (province_id, name) VALUES (4, 'San Pablo');

-- Distritos de Heredia
INSERT INTO district (canton_id, name) VALUES (45, 'Heredia');
INSERT INTO district (canton_id, name) VALUES (45, 'Mercedes');
INSERT INTO district (canton_id, name) VALUES (45, 'San Francisco');
INSERT INTO district (canton_id, name) VALUES (45, 'Ulloa');
INSERT INTO district (canton_id, name) VALUES (45, 'Vara Blanca');

-- Distritos de Barva
INSERT INTO district (canton_id, name) VALUES (46, 'Barva');
INSERT INTO district (canton_id, name) VALUES (46, 'San Pedro');
INSERT INTO district (canton_id, name) VALUES (46, 'San Pablo');
INSERT INTO district (canton_id, name) VALUES (46, 'San Roque');
INSERT INTO district (canton_id, name) VALUES (46, 'Santa Lucía');

-- Distritos de Santo Domingo
INSERT INTO district (canton_id, name) VALUES (47, 'Santo Domingo');
INSERT INTO district (canton_id, name) VALUES (47, 'San Vicente');
INSERT INTO district (canton_id, name) VALUES (47, 'San Miguel');
INSERT INTO district (canton_id, name) VALUES (47, 'Paracito');
INSERT INTO district (canton_id, name) VALUES (47, 'Santo Tomás');
INSERT INTO district (canton_id, name) VALUES (47, 'Santa Rosa');

-- Distritos de Santa Bárbara
INSERT INTO district (canton_id, name) VALUES (48, 'Santa Bárbara');
INSERT INTO district (canton_id, name) VALUES (48, 'San Pedro');
INSERT INTO district (canton_id, name) VALUES (48, 'San Juan');
INSERT INTO district (canton_id, name) VALUES (48, 'Jesús');
INSERT INTO district (canton_id, name) VALUES (48, 'Santo Domingo');
INSERT INTO district (canton_id, name) VALUES (48, 'Purabá');

-- Distritos de San Rafael
INSERT INTO district (canton_id, name) VALUES (49, 'San Rafael');
INSERT INTO district (canton_id, name) VALUES (49, 'San Josecito');
INSERT INTO district (canton_id, name) VALUES (49, 'Santiago');
INSERT INTO district (canton_id, name) VALUES (49, 'Ángeles');
INSERT INTO district (canton_id, name) VALUES (49, 'Concepción');

-- Distritos de San Isidro
INSERT INTO district (canton_id, name) VALUES (50, 'San Isidro');
INSERT INTO district (canton_id, name) VALUES (50, 'San José');
INSERT INTO district (canton_id, name) VALUES (50, 'Concepción');
INSERT INTO district (canton_id, name) VALUES (50, 'San Francisco');

-- Distritos de Belén
INSERT INTO district (canton_id, name) VALUES (51, 'San Antonio');
INSERT INTO district (canton_id, name) VALUES (51, 'La Ribera');
INSERT INTO district (canton_id, name) VALUES (51, 'La Asunción');

-- Distritos de Flores
INSERT INTO district (canton_id, name) VALUES (52, 'San Joaquín');
INSERT INTO district (canton_id, name) VALUES (52, 'Barrantes');
INSERT INTO district (canton_id, name) VALUES (52, 'Llorente');

-- Distritos de San Pablo
INSERT INTO district (canton_id, name) VALUES (53, 'San Pablo');
INSERT INTO district (canton_id, name) VALUES (53, 'Rincón de Sabanilla');
INSERT INTO district (canton_id, name) VALUES (53, 'San Rafael');

-- Cantones de Guanacaste
INSERT INTO canton (province_id, name) VALUES (5, 'Liberia');
INSERT INTO canton (province_id, name) VALUES (5, 'Nicoya');
INSERT INTO canton (province_id, name) VALUES (5, 'Santa Cruz');
INSERT INTO canton (province_id, name) VALUES (5, 'Bagaces');
INSERT INTO canton (province_id, name) VALUES (5, 'Carrillo');
INSERT INTO canton (province_id, name) VALUES (5, 'Cañas');
INSERT INTO canton (province_id, name) VALUES (5, 'Abangares');
INSERT INTO canton (province_id, name) VALUES (5, 'Tilarán');
INSERT INTO canton (province_id, name) VALUES (5, 'Nandayure');
INSERT INTO canton (province_id, name) VALUES (5, 'La Cruz');
INSERT INTO canton (province_id, name) VALUES (5, 'Hojancha');

-- Distritos de Liberia
INSERT INTO district (canton_id, name) VALUES (54, 'Liberia');
INSERT INTO district (canton_id, name) VALUES (54, 'Cañas Dulces');
INSERT INTO district (canton_id, name) VALUES (54, 'Mayorga');
INSERT INTO district (canton_id, name) VALUES (54, 'Nacascolo');

-- Distritos de Nicoya
INSERT INTO district (canton_id, name) VALUES (55, 'Nicoya');
INSERT INTO district (canton_id, name) VALUES (55, 'Mansión');
INSERT INTO district (canton_id, name) VALUES (55, 'San Antonio');
INSERT INTO district (canton_id, name) VALUES (55, 'Quebrada Honda');
INSERT INTO district (canton_id, name) VALUES (55, 'Sámara');
INSERT INTO district (canton_id, name) VALUES (55, 'Nosara');
INSERT INTO district (canton_id, name) VALUES (55, 'Belén de Nosarita');

-- Distritos de Santa Cruz
INSERT INTO district (canton_id, name) VALUES (56, 'Santa Cruz');
INSERT INTO district (canton_id, name) VALUES (56, 'Bolsón');
INSERT INTO district (canton_id, name) VALUES (56, 'Veintisiete de Abril');
INSERT INTO district (canton_id, name) VALUES (56, 'Tempate');
INSERT INTO district (canton_id, name) VALUES (56, 'Cartagena');
INSERT INTO district (canton_id, name) VALUES (56, 'Cuajiniquil');
INSERT INTO district (canton_id, name) VALUES (56, 'Diriá');
INSERT INTO district (canton_id, name) VALUES (56, 'Cabo Velas');
INSERT INTO district (canton_id, name) VALUES (56, 'Tamarindo');

-- Distritos de Bagaces
INSERT INTO district (canton_id, name) VALUES (57, 'Bagaces');
INSERT INTO district (canton_id, name) VALUES (57, 'La Fortuna');
INSERT INTO district (canton_id, name) VALUES (57, 'Mogote');
INSERT INTO district (canton_id, name) VALUES (57, 'Río Naranjo');

-- Distritos de Carrillo
INSERT INTO district (canton_id, name) VALUES (58, 'Filadelfia');
INSERT INTO district (canton_id, name) VALUES (58, 'Palmira');
INSERT INTO district (canton_id, name) VALUES (58, 'Sardinal');
INSERT INTO district (canton_id, name) VALUES (58, 'Belén');

-- Distritos de Cañas
INSERT INTO district (canton_id, name) VALUES (59, 'Cañas');
INSERT INTO district (canton_id, name) VALUES (59, 'Palmira');
INSERT INTO district (canton_id, name) VALUES (59, 'San Miguel');
INSERT INTO district (canton_id, name) VALUES (59, 'Bebedero');
INSERT INTO district (canton_id, name) VALUES (59, 'Porozal');

-- Distritos de Abangares
INSERT INTO district (canton_id, name) VALUES (60, 'Las Juntas');
INSERT INTO district (canton_id, name) VALUES (60, 'Sierra');
INSERT INTO district (canton_id, name) VALUES (60, 'San Juan');
INSERT INTO district (canton_id, name) VALUES (60, 'Colorado');

-- Distritos de Tilarán
INSERT INTO district (canton_id, name) VALUES (61, 'Tilarán');
INSERT INTO district (canton_id, name) VALUES (61, 'Quebrada Grande');
INSERT INTO district (canton_id, name) VALUES (61, 'Tronadora');
INSERT INTO district (canton_id, name) VALUES (61, 'Santa Rosa');
INSERT INTO district (canton_id, name) VALUES (61, 'Líbano');
INSERT INTO district (canton_id, name) VALUES (61, 'Tierras Morenas');

-- Distritos de Nandayure
INSERT INTO district (canton_id, name)VALUES (62, 'Carmona');
INSERT INTO district (canton_id, name) VALUES (62, 'Santa Rita');
INSERT INTO district (canton_id, name) VALUES (62, 'Zapotal');
INSERT INTO district (canton_id, name) VALUES (62, 'San Pablo');

-- Distritos de La Cruz
INSERT INTO district (canton_id, name) VALUES (63, 'La Cruz');
INSERT INTO district (canton_id, name) VALUES (63, 'Santa Cecilia');
INSERT INTO district (canton_id, name) VALUES (63, 'La Garita');
INSERT INTO district (canton_id, name) VALUES (63, 'Santa Elena');

-- Distritos de Hojancha
INSERT INTO district (canton_id, name) VALUES (64, 'Hojancha');
INSERT INTO district (canton_id, name) VALUES (64, 'Monte Romo');
INSERT INTO district (canton_id, name) VALUES (64, 'Puerto Carrillo');
INSERT INTO district (canton_id, name) VALUES (64, 'Huacas');

-- Cantones de Puntarenas
INSERT INTO canton (province_id, name) VALUES (6, 'Puntarenas');
INSERT INTO canton (province_id, name) VALUES (6, 'Esparza');
INSERT INTO canton (province_id, name) VALUES (6, 'Buenos Aires');
INSERT INTO canton (province_id, name) VALUES (6, 'Montes de Oro');
INSERT INTO canton (province_id, name) VALUES (6, 'Osa');
INSERT INTO canton (province_id, name) VALUES (6, 'Quepos');
INSERT INTO canton (province_id, name) VALUES (6, 'Golfito');
INSERT INTO canton (province_id, name) VALUES (6, 'Coto Brus');
INSERT INTO canton (province_id, name) VALUES (6, 'Parrita');
INSERT INTO canton (province_id, name) VALUES (6, 'Corredores');
INSERT INTO canton (province_id, name) VALUES (6, 'Garabito');

-- Distritos de Puntarenas
INSERT INTO district (canton_id, name) VALUES (65, 'Puntarenas');
INSERT INTO district (canton_id, name) VALUES (65, 'Pitahaya');
INSERT INTO district (canton_id, name) VALUES (65, 'Chomes');
INSERT INTO district (canton_id, name) VALUES (65, 'Lepanto');
INSERT INTO district (canton_id, name) VALUES (65, 'Paquera');
INSERT INTO district (canton_id, name) VALUES (65, 'Manzanillo');
INSERT INTO district (canton_id, name) VALUES (65, 'Guacimal');
INSERT INTO district (canton_id, name) VALUES (65, 'Barranca');
INSERT INTO district (canton_id, name) VALUES (65, 'Monteverde');
INSERT INTO district (canton_id, name) VALUES (65, 'Isla del Coco');

-- Distritos de Esparza
INSERT INTO district (canton_id, name) VALUES (66, 'Esparza');
INSERT INTO district (canton_id, name) VALUES (66, 'San Juan Grande');
INSERT INTO district (canton_id, name) VALUES (66, 'Macacona');
INSERT INTO district (canton_id, name) VALUES (66, 'San Rafael');

-- Distritos de Buenos Aires
INSERT INTO district (canton_id, name) VALUES (67, 'Buenos Aires');
INSERT INTO district (canton_id, name) VALUES (67, 'Volcán');
INSERT INTO district (canton_id, name) VALUES (67, 'Potrero Grande');
INSERT INTO district (canton_id, name) VALUES (67, 'Boruca');
INSERT INTO district (canton_id, name) VALUES (67, 'Pilas');
INSERT INTO district (canton_id, name) VALUES (67, 'Colinas');
INSERT INTO district (canton_id, name) VALUES (67, 'Chánguena');
INSERT INTO district (canton_id, name) VALUES (67, 'Biolley');

-- Distritos de Buenos Aires
INSERT INTO district (canton_id, name) VALUES (67, 'Buenos Aires');
INSERT INTO district (canton_id, name) VALUES (67, 'Volcán');
INSERT INTO district (canton_id, name) VALUES (67, 'Potrero Grande');
INSERT INTO district (canton_id, name) VALUES (67, 'Boruca');
INSERT INTO district (canton_id, name) VALUES (67, 'Pilas');
INSERT INTO district (canton_id, name) VALUES (67, 'Colinas');
INSERT INTO district (canton_id, name) VALUES (67, 'Chánguena');
INSERT INTO district (canton_id, name) VALUES (67, 'Biolley');

-- Distritos de Montes de Oro
INSERT INTO district (canton_id, name) VALUES (68, 'Miramar');
INSERT INTO district (canton_id, name) VALUES (68, 'La Unión');
INSERT INTO district (canton_id, name) VALUES (68, 'San Isidro');

-- Distritos de Osa
INSERT INTO district (canton_id, name) VALUES (69, 'Ciudad Cortés');
INSERT INTO district (canton_id, name) VALUES (69, 'Palmar');
INSERT INTO district (canton_id, name) VALUES (69, 'Sierpe');
INSERT INTO district (canton_id, name) VALUES (69, 'Bahía Ballena');
INSERT INTO district (canton_id, name) VALUES (69, 'Piedras Blancas');
INSERT INTO district (canton_id, name) VALUES (69, 'Bahía Drake');

-- Distritos de Quepos
INSERT INTO district (canton_id, name) VALUES (70, 'Quepos');
INSERT INTO district (canton_id, name) VALUES (70, 'Savegre');
INSERT INTO district (canton_id, name) VALUES (70, 'Naranjito');

-- Distritos de Golfito
INSERT INTO district (canton_id, name) VALUES (71, 'Golfito');
INSERT INTO district (canton_id, name) VALUES (71, 'Puerto Jiménez');
INSERT INTO district (canton_id, name) VALUES (71, 'Guaycará');
INSERT INTO district (canton_id, name) VALUES (71, 'Pavón');

-- Distritos de Coto Brus
INSERT INTO district (canton_id, name) VALUES (72, 'San Vito');
INSERT INTO district (canton_id, name) VALUES (72, 'Sabalito');
INSERT INTO district (canton_id, name) VALUES (72, 'Agua Buena');

-- Distritos de Parrita
INSERT INTO district (canton_id, name) VALUES (73, 'Parrita');

-- Distritos de Corredores
INSERT INTO district (canton_id, name) VALUES (74, 'Corredor');
INSERT INTO district (canton_id, name) VALUES (74, 'La Cuesta');
INSERT INTO district (canton_id, name) VALUES (74, 'Paso Canoas');

-- Distritos de Garabito
INSERT INTO district (canton_id, name) VALUES (75, 'Jacó');
INSERT INTO district (canton_id, name) VALUES (75, 'Tárcoles');

-- Cantones de Limón
INSERT INTO canton (province_id, name) VALUES (7, 'Limón');
INSERT INTO canton (province_id, name) VALUES (7, 'Pococí');
INSERT INTO canton (province_id, name) VALUES (7, 'Siquirres');
INSERT INTO canton (province_id, name) VALUES (7, 'Talamanca');
INSERT INTO canton (province_id, name) VALUES (7, 'Matina');
INSERT INTO canton (province_id, name) VALUES (7, 'Guácimo');

-- Distritos de Limón
INSERT INTO district (canton_id, name) VALUES (76, 'Limón');
INSERT INTO district (canton_id, name) VALUES (76, 'Valle La Estrella');
INSERT INTO district (canton_id, name) VALUES (76, 'Río Blanco');
INSERT INTO district (canton_id, name) VALUES (76, 'Matama');

-- Distritos de Pococí
INSERT INTO district (canton_id, name) VALUES (77, 'Guápiles');
INSERT INTO district (canton_id, name) VALUES (77, 'Jiménez');
INSERT INTO district (canton_id, name) VALUES (77, 'La Rita');
INSERT INTO district (canton_id, name) VALUES (77, 'Roxana');
INSERT INTO district (canton_id, name) VALUES (77, 'Cariari');
INSERT INTO district (canton_id, name) VALUES (77, 'Colorado');

-- Distritos de Siquirres
INSERT INTO district (canton_id, name) VALUES (78, 'Siquirres');
INSERT INTO district (canton_id, name) VALUES (78, 'Pacuarito');
INSERT INTO district (canton_id, name) VALUES (78, 'Florida');
INSERT INTO district (canton_id, name) VALUES (78, 'Germania');
INSERT INTO district (canton_id, name) VALUES (78, 'Cairo');
INSERT INTO district (canton_id, name) VALUES (78, 'Alegría');

-- Distritos de Talamanca
INSERT INTO district (canton_id, name) VALUES (79, 'Bratsi');
INSERT INTO district (canton_id, name) VALUES (79, 'Sixaola');
INSERT INTO district (canton_id, name) VALUES (79, 'Cahuita');

-- Distritos de Matina
INSERT INTO district (canton_id, name) VALUES (80, 'Matina');
INSERT INTO district (canton_id, name) VALUES (80, 'Batán');
INSERT INTO district (canton_id, name) VALUES (80, 'Carrandi');

-- Distritos de Guácimo
INSERT INTO district (canton_id, name) VALUES (81, 'Guácimo');
INSERT INTO district (canton_id, name) VALUES (81, 'Mercedes');
INSERT INTO district (canton_id, name) VALUES (81, 'Pocora');
INSERT INTO district (canton_id, name) VALUES (81, 'Río Jiménez');
INSERT INTO district (canton_id, name) VALUES (81, 'Duacarí');


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