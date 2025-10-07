-- Creación de la base de datos: sistema_academico.db
CREATE TABLE IF NOT EXISTS usuarios (
    id_usuario INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre TEXT NOT NULL,
    correo TEXT UNIQUE NOT NULL,
    rol TEXT CHECK(rol IN ('estudiante', 'profesor')) NOT NULL,
    contraseña TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS materias (
    id_materia INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre TEXT NOT NULL,
    descripcion TEXT,
    id_profesor INTEGER,
    FOREIGN KEY (id_profesor) REFERENCES usuarios(id_usuario)
);
CREATE TABLE IF NOT EXISTS calificaciones (
    id_calificacion INTEGER PRIMARY KEY AUTOINCREMENT,
    id_estudiante INTEGER,
    id_materia INTEGER,
    nota REAL CHECK(nota BETWEEN 0 AND 5),
    observaciones TEXT,
    FOREIGN KEY (id_estudiante) REFERENCES usuarios(id_usuario),
    FOREIGN KEY (id_materia) REFERENCES materias(id_materia)
);
CREATE TABLE IF NOT EXISTS tareas (
    id_tarea INTEGER PRIMARY KEY AUTOINCREMENT,
    titulo TEXT NOT NULL,
    descripcion TEXT,
    fecha_entrega DATE,
    estado TEXT DEFAULT 'Pendiente',
    id_estudiante INTEGER,
    id_materia INTEGER,
    FOREIGN KEY (id_estudiante) REFERENCES usuarios(id_usuario),
    FOREIGN KEY (id_materia) REFERENCES materias(id_materia)
);
CREATE TABLE IF NOT EXISTS recordatorios (
    id_recordatorio INTEGER PRIMARY KEY AUTOINCREMENT,
    mensaje TEXT NOT NULL,
    fecha_hora DATETIME NOT NULL,
    id_tarea INTEGER,
    FOREIGN KEY (id_tarea) REFERENCES tareas(id_tarea)
);
CREATE TABLE IF NOT EXISTS horarios (
    id_horario INTEGER PRIMARY KEY AUTOINCREMENT,
    dia TEXT NOT NULL,
    hora_inicio TIME NOT NULL,
    hora_fin TIME NOT NULL,
    id_materia INTEGER,
    FOREIGN KEY (id_materia) REFERENCES materias(id_materia)
);