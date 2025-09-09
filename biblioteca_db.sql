-- Tabla Estudiantes
CREATE TABLE Estudiantes (
    id_estudiante SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL
);

-- Tabla Libros
CREATE TABLE Libros (
    id_libro SERIAL PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    autor VARCHAR(100) NOT NULL,
    disponible BOOLEAN DEFAULT TRUE
);

-- Tabla Prestamos
CREATE TABLE Prestamos (
    id_prestamo SERIAL PRIMARY KEY,
    id_libro INT REFERENCES Libros(id_libro) ON DELETE CASCADE,
    id_estudiante INT REFERENCES Estudiantes(id_estudiante) ON DELETE CASCADE,
    fecha_prestamo DATE NOT NULL,
    fecha_devolucion DATE
);

-- Insertar 10 estudiantes
INSERT INTO Estudiantes (nombre, apellido) VALUES
('Ana', 'García'),
('Luis', 'Pérez'),
('Sofía', 'Martínez'),
('Diego', 'López'),
('Elena', 'Ramírez'),
('Carlos', 'Sánchez'),
('María', 'Gómez'),
('Javier', 'Díaz'),
('Laura', 'Hernández'),
('Pablo', 'Torres');

-- Insertar 10 libros
INSERT INTO Libros (titulo, autor) VALUES
('El principito', 'Antoine de Saint-Exupéry'),
('Cien años de soledad', 'Gabriel García Márquez'),
('Don Quijote de la Mancha', 'Miguel de Cervantes'),
('1984', 'George Orwell'),
('Orgullo y prejuicio', 'Jane Austen'),
('Crimen y castigo', 'Fiódor Dostoievski'),
('El señor de los anillos', 'J.R.R. Tolkien'),
('Harry Potter y la piedra filosofal', 'J.K. Rowling'),
('Rayuela', 'Julio Cortázar'),
('Fahrenheit 451', 'Ray Bradbury');

-- Insertar 10 préstamos
INSERT INTO Prestamos (id_libro, id_estudiante, fecha_prestamo, fecha_devolucion) VALUES
(1, 1, '2025-08-01', '2025-08-15'),
(2, 2, '2025-08-03', NULL), -- Aún no devuelto
(3, 3, '2025-08-05', '2025-08-20'),
(4, 4, '2025-08-07', NULL),
(5, 5, '2025-08-09', '2025-08-22'),
(6, 6, '2025-08-11', NULL),
(7, 7, '2025-08-13', '2025-08-25'),
(8, 8, '2025-08-15', NULL),
(9, 9, '2025-08-17', '2025-08-30'),
(10, 10, '2025-08-19', NULL);

-- Hacer el JOIN de las tres tablas
SELECT
    E.nombre AS nombre_estudiante,
    E.apellido AS apellido_estudiante,
    L.titulo AS titulo_libro,
    P.fecha_prestamo
FROM Estudiantes AS E
JOIN Prestamos AS P ON E.id_estudiante = P.id_estudiante
JOIN Libros AS L ON P.id_libro = L.id_libro
ORDER BY E.apellido, E.nombre;

-- Crear vista de tabla
CREATE VIEW libros_prestados_view AS
SELECT
    E.nombre AS nombre_estudiante,
    E.apellido AS apellido_estudiante,
    L.titulo AS titulo_libro,
    P.fecha_prestamo
FROM Estudiantes AS E
JOIN Prestamos AS P ON E.id_estudiante = P.id_estudiante
JOIN Libros AS L ON P.id_libro = L.id_libro;

-- Mostrar vista de tabla
SELECT * FROM libros_prestados_view;