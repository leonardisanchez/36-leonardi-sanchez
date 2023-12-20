-- Crear una nueva base de datos
CREATE DATABASE IF NOT EXISTS MiBaseDeDatos;

-- Usar la base de datos
USE MiBaseDeDatos;

-- almacenar datos del formulario
CREATE TABLE IF NOT EXISTS DatosFormulario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50),
    correo_electronico VARCHAR(100) UNIQUE NOT NULL,
    telefono VARCHAR(20),
    comentario TEXT,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fecha_nacimiento DATE,
    ciudad VARCHAR(50),
    codigo_postal VARCHAR(10)
);

-- Tabla para almacenar categorías
CREATE TABLE IF NOT EXISTS Categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_categoria VARCHAR(50) NOT NULL,
    descripcion TEXT
);

-- Tabla para establecer la relación entre DatosFormulario y Categorias
CREATE TABLE IF NOT EXISTS DatosFormularioCategorias (
    id_datosformulario INT,
    id_categoria INT,
    PRIMARY KEY (id_datosformulario, id_categoria),
    FOREIGN KEY (id_datosformulario) REFERENCES DatosFormulario(id),
    FOREIGN KEY (id_categoria) REFERENCES Categorias(id)
);

