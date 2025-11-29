-- Crear la base de datos
CREATE DATABASE Agencia_Viajes;

-- Usar la base de datos hola
USE Agencia_Viajes;

---Creacion de tablas
-----Tabla destinos
CREATE TABLE Destinos (
    Nombre_destino VARCHAR(50) NOT NULL PRIMARY KEY,
    Descripcion VARCHAR(50) NULL
);

--  Tabla modalidades_transportes
CREATE TABLE Modalidades_transportes (
    Tipo_medio VARCHAR(30) NOT NULL PRIMARY KEY,
    Tiempo_estandar VARCHAR(225) NULL,
    Caracteristicas VARCHAR(225) NULL,
    Precio_base NUMERIC(10,3) NULL,
    Velocidad_promedio INT NULL
);

-- Tabla Rutas
CREATE TABLE Rutas (
    Nombre_ruta VARCHAR(100) NOT NULL PRIMARY KEY,
    Precio_fijo NUMERIC(10,3) NOT NULL,
    Dias_opera VARCHAR(300) NULL,
    Descripcion_general VARCHAR(300) NULL,
    Kilometraje_recorrido INT NULL,
    Duracion_total INT NULL,
    Des_nombre VARCHAR(50) NOT NULL,
    FOREIGN KEY (Des_nombre) REFERENCES Destinos(Nombre_destino)
);