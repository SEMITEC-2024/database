
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

