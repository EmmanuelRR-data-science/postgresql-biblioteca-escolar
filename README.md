# 📚 Reto de Bases de Datos: Biblioteca Escolar con PostgreSQL

¡Hola! Este repositorio contiene la solución al reto "Cómo empezar en Bases de Datos con PostgreSQL", enfocado en la creación y gestión de una base de datos para una biblioteca escolar.

---

### 🎯 Objetivo del Proyecto

El objetivo principal de este proyecto es demostrar la comprensión de los conceptos básicos de bases de datos relacionales, incluyendo:
- Diseño de un modelo **Entidad-Relación**.
- Uso de **SQL** (Structured Query Language) para la creación, inserción y consulta de datos.
- Implementación de **claves primarias y foráneas** para establecer relaciones entre tablas.
- Optimización de consultas mediante el uso de **JOINs**, **índices** y **vistas**.

---

### 🛠️ Herramientas Utilizadas

- **PostgreSQL 15+**: Sistema de gestión de bases de datos relacionales.
- **pgAdmin 4**: Interfaz de usuario para administrar la base de datos PostgreSQL.
- **SQL**: Lenguaje estándar para interactuar con la base de datos.

---

### 📦 Estructura de la Base de Datos

La base de datos, llamada `biblioteca_db`, se compone de tres tablas principales que modelan las entidades clave de una biblioteca:

1.  **`Estudiantes`**: Almacena la información de los alumnos.
    -   `id_estudiante` (PRIMARY KEY)
    -   `nombre`
    -   `apellido`

2.  **`Libros`**: Contiene los datos de los libros disponibles.
    -   `id_libro` (PRIMARY KEY)
    -   `titulo`
    -   `autor`
    -   `disponible` (BOOLEAN)

3.  **`Prestamos`**: Registra los préstamos realizados, conectando a estudiantes con libros.
    -   `id_prestamo` (PRIMARY KEY)
    -   `id_libro` (FOREIGN KEY de `Libros`)
    -   `id_estudiante` (FOREIGN KEY de `Estudiantes`)
    -   `fecha_prestamo`
    -   `fecha_devolucion`

Las relaciones son de **uno a muchos**: un estudiante puede tener varios préstamos y un libro puede ser prestado varias veces.

---

### 📝 Consultas y Vistas

El archivo `biblioteca_db.sql` incluye la secuencia de comandos para:
-   Crear las tablas con sus respectivas claves.
-   Insertar al menos 10 registros en cada tabla.
-   Realizar una consulta **JOIN** para obtener una lista de los libros prestados por cada estudiante, uniendo las tres tablas de manera eficiente.
-   Crear una **vista** (`vista_libros_prestados`) para simplificar la consulta recurrente de préstamos.

---

### 📊 Evidencia del Proyecto

Se adjuntan capturas de pantalla del resultado de las consultas ejecutadas en pgAdmin, mostrando la correcta manipulación y recuperación de los datos.

#### 1. Creación de la base de datos `biblioteca_db`
![Captura de la creación de la base de datos](captura_db_creation.png)

#### 2. Creación de la tabla `Estudiantes`
![Captura de la creación de la tabla Estudiantes](captura_estudiantes_table.png)

#### 3. Creación de la tabla `Libros`
![Captura de la creación de la tabla Libros](captura_libros_table.png)

#### 4. Creación de la tabla `Prestamos`
![Captura de la creación de la tabla Prestamos](captura_prestamos_table.png)

#### 5. Inserción de registros en la tabla `Estudiantes`
![Captura de la inserción de datos en Estudiantes](captura_insert_estudiantes.png)

#### 6. Inserción de registros en la tabla `Libros`
![Captura de la inserción de datos en Libros](captura_insert_libros.png)

#### 7. Inserción de registros en la tabla `Prestamos`
![Captura de la inserción de datos en Prestamos](captura_insert_prestamos.png)

#### 8. Consulta de libros prestados por estudiante (`JOIN`)
![Captura de la consulta JOIN](captura_join_query.png)

#### 9. Creación de la vista `libros_prestados_view`
![Captura de la creación y consulta de la vista](captura_view_query.png)

#### 10. Consulta de la vista `libros_prestados_view`
![Captura de la creación y consulta de la vista](captura_consulta_view.png)

_¡Gracias por revisar el proyecto!_
