# DB Funciones

* [Usuarios](#usuarios)
* [Grupos](#grupos)
* [Lecciones](#lecciones)
* [Ubicaciones e instituciones](#ubicaciones-e-instituciones)

## Usuarios
### Obtener tipo de usuario
**Nombre:** get_user_type

**Descripción:** Obtiene todos los tipos de usuarios existentes
#### Parámetros de entrada:
Ninguno
#### Parámetros de salida
- `user_type_id`: smallint
- `user_type_name`: varchar(16)

#### Ejemplo de respuesta
```json
[
  {
    "user_type_id": 1,
    "user_type_name": "Estudiante"
  },
  {
    "user_type_id": 2,
    "user_type_name": "Tutor"
  }
]
```

### Obtener usuario
**Nombre:** get_user

**Descripción:** Obtiene la información completa de un usuario
#### Parámetros de entrada:
- `var_user_id`: integer
#### Parámetros de salida
- `name`: varchar(64)
- `user_type`: varchar(16)
- `institution`: varchar(32)
- `district`: varchar(32)
- `other_signs`: varchar(128)
- `canton`: varchar(32)
- `province`: varchar(32)
- `country`: varchar(32)
- `email`: varchar(32)

#### Ejemplo de respuesta
```json
[
  {
    "name": "Carlos Pérez",
    "user_type": "Estudiante",
    "institution": "Escuela Padre Peralta",
    "district": "Cervantes",
    "other_signs": "No additional info",
    "canton": "Alvarado",
    "province": "Cartago",
    "country": "Costa Rica",
    "email": "carlos.perez@example.com"
  }
]
```
### Obtener estudiante
**Nombre:** get_student

**Descripción:** Obtiene la información completa de un estudiante
#### Parámetros de entrada:
- `var_student_id`: integer
#### Parámetros de salida
- `name`: varchar(64)
- `user_type`: varchar(16)
- `institution`: varchar(32)
- `district`: varchar(32)
- `other_signs`: varchar(128)
- `canton`: varchar(32)
- `province`: varchar(32)
- `country`: varchar(32)
- `email`: varchar(32)
- `date_birth`: date
- `education_level`: varchar(16)


#### Ejemplo de respuesta
```json
[
  {
    "name": "Carlos Pérez",
    "user_type": "Estudiante",
    "institution": "Escuela Padre Peralta",
    "district": "Cervantes",
    "other_signs": "No additional info",
    "canton": "Alvarado",
    "province": "Cartago",
    "country": "Costa Rica",
    "email": "carlos.perez@example.com",
    "date_birth": "2005-04-15",
    "education_level": "Educación primaria"
  }
]
```

### Obtener estudiantes por nombre
**Nombre:** get_students_by_name

**Descripción:** Obtiene la lista de los estudiantes según su nombre
#### Parámetros de entrada:
- `var_name`: varchar(64)
#### Parámetros de salida
- `user_id`: integer
- `name`: varchar(64)

#### Ejemplo de respuesta
```json
[
  {
    "user_id": 2,
    "name": "Ana Torres"
  }
]
```

### Obtener estudiantes por institución
**Nombre:** get_students_by_institution

**Descripción:** Obtiene la lista de los estudiantes según su institución
#### Parámetros de entrada:
- `var_institution_id`: integer
#### Parámetros de salida
- `user_id`: integer
- `name`: varchar(32)

#### Ejemplo de respuesta
```json
[
  {
    "user_id": 3,
    "name": "Luis Ramírez"
  }
]
```

### Crear usuario (Profesor)
**Nombre:** insert_teacher

**Descripción:** Crea la cuenta de un profesor 
#### Parámetros de entrada:
- `var_user_type_id`: smallint
- `var_user_configuration_id`: smallint
- `var_institution_id`: integer
- `var_district_id`: integer
- `var_name`: varchar(64)
- `var_password`: varchar(60)
- `var_email`: varchar(32)
- `var_other_signs`: varchar(128)

#### Parámetros de salida
- `insert_teacher`: boolean

#### Ejemplo de respuesta
```json
[
  {
    "insert_teacher": true
  }
]
```

### Crear usuario (Estudiante)
**Nombre:** insert_student

**Descripción:** Crea la cuenta de un estudiante 
#### Parámetros de entrada:
- `var_user_type_id`: smallint
- `var_user_configuration_id`: smallint
- `var_institution_id`: integer
- `var_district_id`: integer
- `var_name`: varchar(64)
- `var_password`: varchar(60)
- `var_email`: varchar(32)
- `var_other_signs`: varchar(128)
- `var_education_level_id`: smallint
- `var_date_birth`: date
#### Parámetros de salida
- `insert_student`: boolean

#### Ejemplo de respuesta
```json
[
  {
    "insert_student": true
  }
]
```

### Asignar nueva información de profesor
**Nombre:** update_teacher

**Descripción:** Asigna/actualiza la información de un profesor solicitante
 
#### Parámetros de entrada:
- `var_user_id`: integer
- `var_institution_id`: integer
- `var_district_id`: integer
- `var_name`: varchar(64)
- `var_email`: varchar(32)
- `var_other_signs`: varchar(128)
- `var_password`: varchar(60) DEFAULT NULL
#### Parámetros de salida
- `update_teacher`: boolean

#### Ejemplo de respuesta
```json
[
  {
    "update_teacher": true
  }
]
```

### Asignar nueva información de estudiante
**Nombre:** update_student

**Descripción:** Asigna/actualiza la información de un estudiante solicitante
 
#### Parámetros de entrada:
- `var_user_id`: integer
- `var_institution_id`: integer
- `var_district_id`: integer
- `var_name`: varchar(64)
- `var_email`: varchar(32)
- `var_other_signs`: varchar(128),
- `var_date_birth`: date
- `var_education_level`: smallint
- `var_password`: varchar(60) DEFAULT NULL
#### Parámetros de salida
- `update_student`: boolean

#### Ejemplo de respuesta
```json
[
  {
    "update_student": true
  }
]
```


## Grupos
### Obtener información del grupo
**Nombre:** get_group_info

**Descripción:** Obtiene información de un grupo según su ID
#### Parámetros de entrada:
- `var_group_id`: integer
#### Parámetros de salida
- `group_id`: integer
- `group_name`: varchar(16)
- `group_code`: varchar(16)
- `teacher_name`: varchar(64)

#### Ejemplo de respuesta
```json
[
  {
    "group_id": 1,
    "group_name": "Grupo A",
    "group_code": "GRA2024",
    "teacher_name": "María Cordero"
  }
]
```

### Obtener grupos por profesor
**Nombre:** get_group_teacher

**Descripción:** Obtiene la información de los grupos según el profesor.
#### Parámetros de entrada:
- `teacher_id`: integer
#### Parámetros de salida
- `group_id`: integer
- `group_name`: varchar(16)
- `group_code`: varchar(16)

#### Ejemplo de respuesta
```json
[
  {
    "group_id": 1,
    "group_name": "Grupo A",
    "group_code": "GRA2024"
  }
]
```

### Obtener la cantidad de grupos por profesor (Paginación)
**Nombre:** get_group_teacher_count

**Descripción:** Obtiene la cantidad de grupos que tenga un profesor el profesor.
#### Parámetros de entrada:
- `teacher_id`: integer
#### Parámetros de salida
- `get_group_teacher_count`: integer

#### Ejemplo de respuesta
```json
[
  {
    "get_group_teacher_count": 1
  }
]
```

### Obtener grupos por profesor (Paginación)
**Nombre:** get_group_teacher_per_page

**Descripción:** Obtiene la información de los grupos según el profesor según paginación.
#### Parámetros de entrada:
- `teacher_id`: integer
- `var_page_number`: integer - Default 1
- `var_page_size`: integer - Default 10
#### Parámetros de salida
- `group_id`: integer
- `group_name`: varchar(16)
- `group_code`: varchar(16)

#### Ejemplo de respuesta
```json
[
  {
    "group_id": 1,
    "group_name": "Grupo A",
    "group_code": "GRA2024"
  }
]
```

### Obtener estudiantes del grupo
**Nombre:** get_group_students

**Descripción:** Obtiene todos los estudiantes de un grupo
#### Parámetros de entrada:
- `var_group_id`: integer
#### Parámetros de salida
- `student_id`: integer
- `student_name`: varchar(64)

#### Ejemplo de respuesta
```json
[
  {
    "student_id": 1,
    "student_name": "Carlos Pérez"
  },
  {
    "student_id": 2,
    "student_name": "Ana Torres"
  }
]
```

### Obtener la cantidad de estudiantes en un grupo (Paginación)
**Nombre:** get_group_students_count

**Descripción:** Obtiene la cantidad de estudiantes que hay en un grupo, útil para paginación.
#### Parámetros de entrada:
- `var_group_id`: integer
#### Parámetros de salida
- `get_group_students_count`: integer

#### Ejemplo de respuesta
```json
[
  {
    "get_group_students_count": 5
  }
]
```

### Obtener estudiantes de un grupo (Paginación)
**Nombre:** get_group_students_per_page

**Descripción:** Obtiene 
#### Parámetros de entrada:
- `var_group_id`: integer
- `var_page_number`: integer - Default 1
- `var_page_size`: integer - Default 10
#### Parámetros de salida
- `student_id`: integer
- `student_name`: varchar(64)

#### Ejemplo de respuesta
```json

```

### Obtener información de un grupo (ALT)
**Nombre:** get_group_class

**Descripción:** Obtiene información alternativa de un grupo según el ID.
#### Parámetros de entrada:
- `var_group_id`: integer
#### Parámetros de salida
- `group_id`: smallint
- `name`: varchar(32)
- `name_teacher`: varchar(64)
- `group_code`: varchar(16)

#### Ejemplo de respuesta
```json
[
  {
    "group_id": 1,
    "name": "Grupo A",
    "name_teacher": "María Cordero",
    "group_code": "GRA2024"
  }
]
```

### Obtener información grupo (Estudiante)
**Nombre:** get_group_info_by_student

**Descripción:** Obtiene la información de los grupos a los que pertenece un estudiante
#### Parámetros de entrada:
- `var_user_id`: integer
#### Parámetros de salida
- `group_id`: integer
- `name`: varchar(32)
- `group_code`: varchar(16)
- `name_teacher`: varchar(64)

#### Ejemplo de respuesta
```json
[
  {
    "group_id": 1,
    "group_name": "Grupo A",
    "group_code": "GRA2024",
    "teacher_name": "María Cordero"
  }
]
```
### Crear grupo
**Nombre:** insert_group_class

**Descripción:** Crea un grupo para el profesor solicitante
#### Parámetros de entrada:
- `p_teacher_user_id`: integer
- `p_name`: varchar(32)
#### Parámetros de salida
- `out_group_id`: smallint
- `out_group_code`: varchar(16)

#### Ejemplo de respuesta
```json
[
  {
    "out_group_id": 6,
    "out_group_code": "GR7762"
  }
]
```

### Asignar un grupo (Estudiante)
**Nombre:** insert_student_in_group

**Descripción:** Asigna un estudiante a un grupo 
#### Parámetros de entrada:
- `var_group_id`: integer
- `var_user_id`: integer
#### Parámetros de salida
- `insert_student_in_group`: boolean

#### Ejemplo de respuesta
```json
[
  {
    "insert_student_in_group": true
  }
]
```


## Lecciones
### Obtener lección
**Nombre:** get_lesson

**Descripción:** Obtiene la información de una lección según el ID 
#### Parámetros de entrada:
- `var_lesson_id`: integer
#### Parámetros de salida
- `name_level`: varchar(16)
- `content`: varchar(256)
- `iterations`: smallint
- `min_time`: smallint
- `min_mistakes`: smallint
- `name`: varchar(16)
- `description`: varchar(128)
- `lesson_code`: varchar(16)

#### Ejemplo de respuesta
```json
[
  {
    "name_level": "Nivel 1",
    "content": "Introducción a la mecanografía: uso de las manos en el teclado.",
    "iterations": 10,
    "min_time": 5,
    "min_mistakes": 2,
    "name": "Mecanografía Básica",
    "description": "Aprende a usar correctamente tus manos en el teclado.",
    "lesson_code": "MEC1"
  }
]
```

### Obtener la última lección (Estudiante)
**Nombre:** get_last_lesson

**Descripción:** Procedimiento que da la última lección de un estudiante 
#### Parámetros de entrada:
- `var_student_id`: integer
#### Parámetros de salida
- `get_last_lesson`: integer

#### Ejemplo de respuesta
```json
[
  {
    "get_last_lesson": 3
  }
]
```

### Obtener métricas del estudiante
**Nombre:** get_lesson_metrics_student

**Descripción:** Obtiene todas las métricas según el ID del estudiante 
#### Parámetros de entrada:
- `var_student_id`: integer
#### Parámetros de salida
- `lesson_id`: integer
- `time_taken`: smallint
- `accuracy_rate`: real
- `pulsation_per_minute`: smallint
- `is_complete`: bit
- `completion_date`: date

#### Ejemplo de respuesta
```json
[
  {
    "lesson_id": 1,
    "time_taken": 120,
    "accuracy_rate": 95.5,
    "pulsation_per_minute": 65,
    "is_complete": "1",
    "completion_date": "2024-10-20"
  },
  {
    "lesson_id": 2,
    "time_taken": 90,
    "accuracy_rate": 97,
    "pulsation_per_minute": 72,
    "is_complete": "1",
    "completion_date": "2024-10-21"
  }
]
```

### Obtener métricas promedio
**Nombre:** get_metrics_average

**Descripción:** Obtiene el promedio de las métricas de un estudiante
#### Parámetros de entrada:
- `var_student_id`: integer
#### Parámetros de salida
- `avg_time_taken`: integer
- `avg_mistakes`: integer
- `avg_accuracy_rate`: real
- `avg_pulsation_per_minute`: integer

#### Ejemplo de respuesta
```json
[
  {
    "avg_time_taken": 120,
    "avg_mistakes": 3,
    "avg_accuracy_rate": 93.6,
    "avg_pulsation_per_minute": 65
  }
]
```

### Obtener lecciones por profesor
**Nombre:** get_lessons_private_by_teacher

**Descripción:** Obtiene todas las lecciones creadas por un profesor.
#### Parámetros de entrada:
- `var_teacher_id`: integer
#### Parámetros de salida
- `lesson_id`: integer
- `level_id`: smallint
- `content`: varchar(256)
- `iterations`: smallint
- `min_time`: smallint
- `min_mistakes`: smallint
- `name`: varchar(16)
- `description`: varchar(128)
- `lesson_code`: varchar(16)
- `assignment`: bit
- `shared`: bit

#### Ejemplo de respuesta
```json
[
  {
    "lesson_id": 4,
    "level_id": 2,
    "content": "Teclas de la fila superior.",
    "iterations": 10,
    "min_time": 6,
    "min_mistakes": 2,
    "name": "Fila Superior",
    "description": "Aprende las teclas de la fila superior del teclado.",
    "lesson_code": "MEC4",
    "assignment": "1",
    "shared": "0"
  },
  {
    "lesson_id": 15,
    "level_id": 2,
    "content": "Ejercicios combinados con todas las filas.",
    "iterations": 15,
    "min_time": 9,
    "min_mistakes": 3,
    "name": "Ejercicios Combinados",
    "description": "Práctica con todas las filas del teclado.",
    "lesson_code": "MEC15",
    "assignment": "1",
    "shared": "0"
  }
]
```

### Obtener lecciones públicas
**Nombre:** get_lessons_public

**Descripción:** Obtiene todas las lecciones públicas
#### Parámetros de entrada:
Ninguno
#### Parámetros de salida
- `lesson_id`: integer
- `level_id`: smallint
- `content`: varchar(256)
- `iterations`: smallint
- `min_time`: smallint
- `min_mistakes`: smallint
- `name`: varchar(16)
- `teacher_name`: varchar(64)
- `description`: varchar(128)
- `lesson_code`: varchar(16)
- `assignment`: bit
- `shared`: bit

#### Ejemplo de respuesta
```json
[
  {
    "lesson_id": 2,
    "level_id": 1,
    "content": "Teclas de la fila de inicio.",
    "iterations": 8,
    "min_time": 4,
    "min_mistakes": 1,
    "name": "Fila de Inicio",
    "teacher_name": "Alberto Núñez",
    "description": "Familiarízate con las teclas de la fila de inicio.",
    "lesson_code": "MEC2",
    "assignment": "1",
    "shared": "1"
  },
  {
    "lesson_id": 3,
    "level_id": 1,
    "content": "Ejercicios de dedos en la fila de inicio.",
    "iterations": 12,
    "min_time": 6,
    "min_mistakes": 2,
    "name": "Ejercicios de Inicio",
    "teacher_name": "Elena Vargas",
    "description": "Práctica los ejercicios de mecanografía con la fila de inicio.",
    "lesson_code": "MEC3",
    "assignment": "0",
    "shared": "1"
  }
]
```

### Obtener cantidad de lecciones públicas (Paginación)
**Nombre:** get_lessons_public_count

**Descripción:** Obtiene la cantidad de prácticas públicas en el sistema.
#### Parámetros de entrada:
Ninguno
#### Parámetros de salida
- `get_lessons_public_count`: integer

#### Ejemplo de respuesta
```json
[
  {
    "get_lessons_public_count": 12
  }
]
```

### Obtener lecciones públicas (Páginación)
**Nombre:** get_lessons_public_per_page

**Descripción:** Obtiene las lecciones en grupos de 10 lecciones públicas
#### Parámetros de entrada:
- `var_page_number`: integer - Default 1
- `var_page_size`: integer - Default 10
#### Parámetros de salida
- `lesson_id`: integer
- `level_id`: smallint
- `content`: varchar(256)
- `iterations`: smallint
- `min_time`: smallint
- `min_mistakes`: smallint
- `name`: varchar(16)
- `teacher_name`: varchar(64)
- `description`: varchar(128)
- `lesson_code`: varchar(16)
- `assignment`: bit
- `shared`: bit

#### Ejemplo de respuesta
```json
[
  {
    "lesson_id": 18,
    "level_id": 3,
    "content": "Textos avanzados para velocidad y precisión.",
    "iterations": 12,
    "min_time": 12,
    "min_mistakes": 5,
    "name": "Textos Avanzados",
    "teacher_name": "Alberto Núñez",
    "description": "Desarrolla velocidad y precisión con textos complejos.",
    "lesson_code": "MEC18",
    "assignment": "0",
    "shared": "1"
  }
]
```
### Obtener lecciones privadas de profesor (Páginación)
**Nombre:** get_lessons_private_by_teacher_pages

**Descripción:** Obtiene las lecciones creadas por un profesor en particular, con paginación.
#### Parámetros de entrada:
- `var_teacher_id`: integer
- `var_page_number`: integer - Default 1
- `var_page_size`: integer - Default 10
#### Parámetros de salida
- `lesson_id`: integer
- `level_id`: smallint
- `content`: varchar(256)
- `iterations`: smallint
- `min_time`: smallint
- `min_mistakes`: smallint
- `name`: varchar(16)
- `description`: varchar(128)
- `lesson_code`: varchar(16)
- `assignment`: bit
- `shared`: bit

#### Ejemplo de respuesta
```json
[
  {
    "lesson_id": 1,
    "level_id": 1,
    "content": "Introducción a la mecanografía: uso de las manos en el teclado.",
    "iterations": 10,
    "min_time": 5,
    "min_mistakes": 2,
    "name": "Mecanografía Básica",
    "description": "Aprende a usar correctamente tus manos en el teclado.",
    "lesson_code": "MEC1",
    "assignment": "1",
    "shared": "0"
  },
  {
    "lesson_id": 17,
    "level_id": 3,
    "content": "Mecanografía con números y símbolos.",
    "iterations": 8,
    "min_time": 10,
    "min_mistakes": 4,
    "name": "Números y Símbolos",
    "description": "Mecanografía avanzada usando números y símbolos.",
    "lesson_code": "MEC17",
    "assignment": "1",
    "shared": "0"
  }
]
```
### Obtener niveles de lecciones
**Nombre:** get_level

**Descripción:** Obtiene todos los niveles de dificultad en el sistema 
#### Parámetros de entrada:
Ninguno
#### Parámetros de salida
- `level_id`: smallint
- `name`: varchar(32)

#### Ejemplo de respuesta
```json
[
  {
    "level_id": 1,
    "name": "Nivel 1"
  },
  {
    "level_id": 2,
    "name": "Nivel 2"
  },
  {
    "level_id": 3,
    "name": "Nivel 3"
  }
]
```
### Crear lección
**Nombre:** insert_lesson

**Descripción:** Crea una lección 
#### Parámetros de entrada:
- `var_level_id`: integer
- `var_teacher_id`: integer
- `var_content`: varchar(256)
- `var_iterations`: smallint
- `var_min_time`: smallint
- `var_min_mistakes`: smallint
- `var_name`: varchar(32)
- `var_description`: varchar(128)
- `var_assignment`: bit
- `var_shared`: bit	
#### Parámetros de salida
- `success`: boolean
- `lesson_id`: integer

#### Ejemplo de respuesta
```json
[
  {
    "outlesson_id": 20,
    "success": true
  }
]
```

### Crear métricas de lección
**Nombre:** insert_student_metrics

**Descripción:** Crea las métricas de un estudiante con respecto a una lección.
#### Parámetros de entrada:
- `var_lesson_id`: integer
- `var_student_user_id`: integer
- `var_time_taken`: smallint
- `var_mistakes`: smallint
- `var_accuracy_rate`: real
- `var_pulsation_per_minute`: smallint
- `var_is_complete`: bit
- `var_completion_date`: date
#### Parámetros de salida
- `insert_student_metrics`: integer
- `name`: varchar(32)

#### Ejemplo de respuesta
```json
[
  {
    "insert_student_metrics": true
  }
]
```

### Asignar lección a estudiantes
**Nombre:** assign_lesson

**Descripción:** Asigna una lección ya creada a estudiantes 
#### Parámetros de entrada:
- `lesson_id`: integer
- `students_ids`: integer[]
#### Parámetros de salida
- `assign_lesson`: boolean

#### Ejemplo de respuesta
```json
[
  {
    "assign_lesson": true
  }
]
```

## Ubicaciones e instituciones
### Obtener países
**Nombre:** get_country

**Descripción:** Obtiene todos los paises existentes
#### Parámetros de entrada:
Ninguno
#### Parámetros de salida
- `country_id`: integer
- `name`: varchar(32)

#### Ejemplo de respuesta
```json
[
  {
    "country_id": 1,
    "name": "Costa Rica"
  }
]
```
### Obtener provincias
**Nombre:** get_province

**Descripción:** Obtiene todas las provincias existentes de un país
#### Parámetros de entrada:
- `var_country_id`: integer
#### Parámetros de salida
- `province_id`: integer
- `name`: varchar(32)

#### Ejemplo de respuesta
```json
[
  {
    "province_id": 1,
    "name": "San José"
  },
  {
    "province_id": 2,
    "name": "Alajuela"
  },
  {
    "province_id": 3,
    "name": "Cartago"
  }
]
```
### Obtener cantones
**Nombre:** get_canton

**Descripción:** Obtiene todos los cantones existentes según la provincia
#### Parámetros de entrada:
- `var_province_id`: integer
#### Parámetros de salida
- `canton_id`: integer
- `name`: varchar(32)

#### Ejemplo de respuesta
```json
[
  {
    "canton_id": 1,
    "name": "Alvarado"
  },
  {
    "canton_id": 2,
    "name": "Cartago"
  },
  {
    "canton_id": 3,
    "name": "El Guarco"
  }
```
### Obtener distritos
**Nombre:** get_district

**Descripción:** Obtiene todos los cantones existentes según el cantón
#### Parámetros de entrada:
- `var_canton_id`: integer
#### Parámetros de salida
- `district_id`: integer
- `name`: varchar(32)

#### Ejemplo de respuesta
```json
[
  {
    "district_id": 20,
    "name": "San Rafael"
  },
  {
    "district_id": 21,
    "name": "Cot"
  },
  {
    "district_id": 22,
    "name": "Potrero Cerrado"
  }
]
```
### Obtener instituciones por país
**Nombre:** get_institution

**Descripción:** Obtiene todas las instituciones según el país.
#### Parámetros de entrada:
- `var_country_id`: integer
#### Parámetros de salida
- `institution_id`: integer
- `name`: varchar(32)

#### Ejemplo de respuesta
```json
[
  {
    "institution_id": 1,
    "name": "Escuela Padre Peralta"
  },
  {
    "institution_id": 2,
    "name": "Escuela de los Angeles"
  },
  {
    "institution_id": 3,
    "name": "Escuela Nuestra Señora de Fátima"
  }
]
```
### Obtener instituciones por distrito
**Nombre:** get_institution_by_district

**Descripción:** Obtiene todos los cantones existentes según la provincia
#### Parámetros de entrada:
- `var_district_id`: integer
#### Parámetros de salida
- `institution_id`: integer
- `name`: varchar(32)

#### Ejemplo de respuesta
```json
[
  {
    "institution_id": 1,
    "name": "Escuela Padre Peralta"
  },
  {
    "institution_id": 5,
    "name": "Escuela el Bosque"
  }
]
```
### Obtener nivel educativo
**Nombre:** get_education_level

**Descripción:** Obtiene todos los niveles educativos existentes
#### Parámetros de entrada:
Ninguno
#### Parámetros de salida
- `education_level_id`: smallint
- `name`: varchar(16)

#### Ejemplo de respuesta
```json
[
  {
    "education_level_id": 1,
    "name": "Educación primaria"
  },
  {
    "education_level_id": 2,
    "name": "Educación secundaria"
  },
  {
    "education_level_id": 3,
    "name": "Educación universitaria"
  }
]
```
