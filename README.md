
# DB Funciones

* [Usuarios](#usuarios)
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
### Obtener estudiantes del grupo PENDIENTE
**Nombre:** students_group
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
### Obtener información de un grupo (ALT) PENDIENTE
**Nombre:** get_group_class
**Descripción:** Obtiene información alternativa de un grupo según el ID.
#### Parámetros de entrada:
- `var_group_id`: integer
#### Parámetros de salida
- `group_id`: smallint
- `name_teacher`: varchar(64)
- `name`: varchar(32)
- `group_code`: varchar(16)

#### Ejemplo de respuesta
```json
[
  {
    "group_id": 1,
    "name_teacher": "Grupo A",
    "name": "María Cordero",
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
- `name_teacher`: varchar(64)
- `name`: varchar(32)
- `group_code`: varchar(16)

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

## Lecciones
### Obtener lección PENDIENTE
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
    "lesson_id": 1,
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
### Obtener lecciones públicas (PENDIENTE)
**Nombre:** get_lessons_public
**Descripción:** Obtiene todas las lecciones públicas
#### Parámetros de entrada:
- ``: integer
#### Parámetros de salida
- ``: integer
- `name`: varchar(32)

#### Ejemplo de respuesta
```json

```

### Obtener lecciones por profesor PENDIENTE
**Nombre:** get_lessons_private_by_teacher
**Descripción:** Obtiene todas las lecciones creadas por un profesor.
#### Parámetros de entrada:
- ``: integer
#### Parámetros de salida
- ``: integer
- `name`: varchar(32)

#### Ejemplo de respuesta
```json

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
