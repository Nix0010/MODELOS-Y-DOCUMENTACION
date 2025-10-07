# TABLAS

## Tabla: usuario
| Campo      | Tipo     | PK/FK | Descripción                        |
|------------|----------|-------|------------------------------------|
| id_usuario | INTEGER  | PK    | Identificador único del usuario    |
| nombre     | TEXT     |       | Nombre completo                    |
| email      | TEXT     |       | Correo electrónico                 |
| tipo       | TEXT     |       | rol: estudiante/profesor/admin     |

## Tabla: estudiante
| Campo        | Tipo    | PK/FK | Descripción                    |
|--------------|---------|-------|--------------------------------|
| id_estudiante| INTEGER | PK,FK | FK -> usuario(id_usuario)      |
| matricula    | TEXT    |       | Número de matrícula            |
| carrera      | TEXT    |       | Carrera/Programa               |
| semestre     | INTEGER |       | Semestre actual                |

## Tabla: asignatura
| Campo         | Tipo    | PK/FK | Descripción                  |
|---------------|---------|-------|------------------------------|
| id_asignatura | INTEGER | PK    | Identificador de asignatura  |
| nombre        | TEXT    |       | Nombre de la asignatura      |
| creditos      | INTEGER |       | Créditos asociados           |
| docente_id    | INTEGER | FK    | FK -> usuario(id_usuario)    |

## Tabla: tarea
| Campo        | Tipo    | PK/FK | Descripción                      |
|--------------|---------|-------|----------------------------------|
| id_tarea     | INTEGER | PK    | Identificador de la tarea        |
| titulo       | TEXT    |       | Título de la tarea               |
| descripcion  | TEXT    |       | Descripción                      |
| fecha_entrega| TEXT    |       | Fecha de entrega (ISO)           |
| estado       | TEXT    |       | Nueva / Programada / Completada  |
| id_asignatura| INTEGER | FK    | FK -> asignatura(id_asignatura)  |
| creador_id   | INTEGER | FK    | FK -> usuario(id_usuario)        |

## Tabla: horario
| Campo         | Tipo    | PK/FK | Descripción                     |
|---------------|---------|-------|---------------------------------|
| id_horario    | INTEGER | PK    | Identificador del horario       |
| estudiante_id | INTEGER | FK    | FK -> estudiante(id_estudiante) |
| dia           | TEXT    |       | Día de la semana                |
| hora_inicio   | TEXT    |       | Hora inicio (HH:MM)             |
| hora_fin      | TEXT    |       | Hora fin (HH:MM)                |
| id_asignatura | INTEGER | FK    | FK -> asignatura(id_asignatura) |

## Tabla: calificacion
| Campo          | Tipo    | PK/FK | Descripción                         |
|----------------|---------|-------|-------------------------------------|
| id_calificacion| INTEGER | PK    | Identificador de la calificación    |
| estudiante_id  | INTEGER | FK    | FK -> estudiante(id_estudiante)     |
| tarea_id       | INTEGER | FK    | FK -> tarea(id_tarea)               |
| id_asignatura  | INTEGER | FK    | FK -> asignatura(id_asignatura)     |
| nota           | REAL    |       | Nota obtenida                       |
| fecha_registro | TEXT    |       | Fecha del registro                  |

## Tabla: recordatorio
| Campo            | Tipo    | PK/FK | Descripción                       |
|------------------|---------|-------|-----------------------------------|
| id_recordatorio  | INTEGER | PK    | Identificador del recordatorio    |
| tarea_id         | INTEGER | FK    | FK -> tarea(id_tarea)             |
| mensaje          | TEXT    |       | Texto del recordatorio            |
| fecha_recordatorio| TEXT   |       | Fecha y hora programada (ISO)     |
| enviado          | INTEGER |       | 0 = no enviado, 1 = enviado       |

## Tabla: configuracion
| Campo        | Tipo    | PK/FK | Descripción                      |
|--------------|---------|-------|----------------------------------|
| id_config    | INTEGER | PK    | Identificador de la configuración|
| id_usuario   | INTEGER | FK    | FK -> usuario(id_usuario)        |
| tema         | TEXT    |       | Nombre del tema (p.ej. claro)    |
| color_primario| TEXT   |       | Color principal en HEX           |

