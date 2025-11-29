-- Crear la base de datos
CREATE DATABASE Agencia_Viajes;

-- Usar la base de datos hola
USE Agencia_Viajes;

---Creacion de tablas
----- 1- Tabla destinos
CREATE TABLE Destinos (
    Nombre_destino VARCHAR(50) NOT NULL PRIMARY KEY,
    Descripcion VARCHAR(50) NULL
);

-- 2-  Tabla modalidades_transportes
CREATE TABLE Modalidades_transportes (
    Tipo_medio VARCHAR(30) NOT NULL PRIMARY KEY,
    Tiempo_estandar VARCHAR(225) NULL,
    Caracteristicas VARCHAR(225) NULL,
    Precio_base NUMERIC(10,3) NULL,
    Velocidad_promedio INT NULL
);

-- 3- Tabla Rutas
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

-- 4- Tabla Pasajeros
CREATE TABLE Pasajeros (
    Cedula VARCHAR(20) NOT NULL PRIMARY KEY,
    Apellidos_nombre VARCHAR(100) NOT NULL,
    Telefono VARCHAR(20) NOT NULL
);
-- 5- Tabla Vehiculos
CREATE TABLE Vehiculos (
    Matricula VARCHAR(20) NOT NULL PRIMARY KEY,
    Modelo VARCHAR(50) NOT NULL,
    Fabricante VARCHAR(50) NOT NULL,
    Numero_plazas INT NOT NULL,
    Caracteristicas_basicas VARCHAR(255) NULL,
    Mod_tipo VARCHAR(30) NOT NULL,
    FOREIGN KEY (Mod_tipo) REFERENCES Modalidades_transportes(Tipo_medio)
);
-- 6- Tabla Conductores
CREATE TABLE Conductores (
    Cedula VARCHAR(20) NOT NULL PRIMARY KEY,
    Nombre_apellidos VARCHAR(100) NOT NULL,
    Telefono VARCHAR(20) NOT NULL,
    Direccion VARCHAR(150) NULL,
    Veh_matricula VARCHAR(20) NOT NULL,
    FOREIGN KEY (Veh_matricula) REFERENCES Vehiculos(Matricula)
);

-- 7- Tabla Revisiones
CREATE TABLE Revisiones (
    Codigo_revision VARCHAR(50) NOT NULL PRIMARY KEY,
    Fecha_de_revision DATE NOT NULL,
    Diagnostico VARCHAR(70) NULL,
    Costo_revision NUMERIC(10,3) NULL,
    Veh_Matricula VARCHAR(20) NOT NULL,
    FOREIGN KEY (Veh_Matricula) REFERENCES Vehiculos(Matricula)
);

-- 8- Tabla Billetes
CREATE TABLE Billetes (
    Id_Viaje VARCHAR(50) NOT NULL PRIMARY KEY,
    Fecha_viaje DATE NOT NULL,
    Hora_de_llegada_prevista TIME NOT NULL,
    Importe FLOAT NOT NULL,
    Hora_salida TIME NOT NULL,
    Pas_Cedula VARCHAR(20) NOT NULL,
    Rut_nombre VARCHAR(100) NOT NULL,
    FOREIGN KEY (Pas_Cedula) REFERENCES Pasajeros(Cedula),
    FOREIGN KEY (Rut_nombre) REFERENCES Rutas(Nombre_ruta)
);
--- 9- Tabla Puntos_Paradas
CREATE TABLE Puntos_paradas (
    Secuencia_lugar INT NOT NULL,
    Rut_nombre VARCHAR(100) NOT NULL,
    Nombre_lugar VARCHAR(100) NOT NULL,
    Hora_de_llegada TIME NULL,
    Actividad_a_realizar VARCHAR(100) NULL,
    Tiempo_de_parada INT NULL,
    PRIMARY KEY (Secuencia_lugar, Rut_nombre),
    FOREIGN KEY (Rut_nombre) REFERENCES Rutas(Nombre_ruta)
);
-- 10- Tabla Reparaciones
CREATE TABLE Reparaciones (
    Codigo_reparacion VARCHAR(30) NOT NULL PRIMARY KEY,
    Tiempo_empleado INT NULL,
    Comentario VARCHAR(50) NULL,
    Costo_reparacion NUMERIC(10,3) NOT NULL,
    Rev_Codigo VARCHAR(50) NOT NULL,
    FOREIGN KEY (Rev_Codigo) REFERENCES Revisiones(Codigo_revision)
);

-- 11- Tabla Rutas_Modalidades

CREATE TABLE Rutas_Modalidades (
    Mod_tipo VARCHAR(30) NOT NULL,
    Rut_nombre VARCHAR(100) NOT NULL,
    PRIMARY KEY (Mod_tipo, Rut_nombre),
    FOREIGN KEY (Mod_tipo) REFERENCES Modalidades_transportes(Tipo_medio),
    FOREIGN KEY (Rut_nombre) REFERENCES Rutas(Nombre_ruta)
);