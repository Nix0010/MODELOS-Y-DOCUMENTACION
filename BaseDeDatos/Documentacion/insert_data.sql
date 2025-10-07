INSERT INTO usuarios (nombre, correo, rol, contraseña) VALUES
('Valery Alarcón', 'valery@fesc.edu.co', 'estudiante', '1234'),
('Mary Rodríguez', 'mary@fesc.edu.co', 'estudiante', 'abcd'),
('Hely Suárez', 'hely@fesc.edu.co', 'profesor', 'admin');
INSERT INTO materias (nombre, descripcion, id_profesor) VALUES
('Matemáticas', 'Cálculo y álgebra', 3),
('Física', 'Electromagnetismo y mecánica', 3),
('Programación', 'Desarrollo en Python y bases de datos', 3);
INSERT INTO tareas (titulo, descripcion, fecha_entrega, id_estudiante, id_materia) VALUES
('Ejercicio de derivadas', 'Resolver guía completa', '2025-10-10', 1, 1),
('Proyecto Qt', 'Diseñar interfaz académica', '2025-10-15', 2, 3);
INSERT INTO recordatorios (mensaje, fecha_hora, id_tarea) VALUES
('Entregar derivadas antes del viernes', '2025-10-09 08:00:00', 1),
('Revisar avances del proyecto Qt', '2025-10-14 20:00:00', 2);
INSERT INTO calificaciones (id_estudiante, id_materia, nota, observaciones) VALUES
(1, 1, 4.5, 'Excelente trabajo'),
(2, 3, 4.0, 'Cumple con los requisitos');
INSERT INTO horarios (dia, hora_inicio, hora_fin, id_materia) VALUES
('Lunes', '08:00', '10:00', 1),
('Martes', '10:00', '12:00', 2),
('Miércoles', '14:00', '16:00', 3);