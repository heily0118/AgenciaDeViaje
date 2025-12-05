-- 1- Tabla destinos
INSERT INTO Destinos (Nombre_destino, Descripcion) VALUES
('Cartagena', 'Ciudad turistica'),
('Bogota', 'Capital del pais'),
('Medellin', 'Ciudad de la eterna primavera'),
('Cali', 'Capital de la salsa'),
('Barranquilla', 'Ciudad del carnaval'),
('Santa Marta', 'Playa y montaña'),
('San Andres', 'Mar de siete colores'),
('Pereira', 'Region cafetera'),
('Bucaramanga', 'Ciudad bonita'),
('Leticia', 'Amazonas colombiano');

-- 2- Tabla Modalidad de transportes
INSERT INTO Modalidades_transportes 
(Tipo_medio, Tiempo_estandar, Caracteristicas, Precio_base, Velocidad_promedio)
VALUES
('Bus', '4 horas', 'Transporte terrestre intermunicipal', 45000.000, 80),
('Avion', '1 hora', 'Transporte aereo nacional', 250000.000, 600),
('Lancha', '45 minutos', 'Transporte marítimo local', 30000.000, 50),
('Taxi', '30 minutos', 'Transporte urbano privado', 15000.000, 40),
('Metro', '20 minutos', 'Transporte masivo electrico', 3000.000, 70),
('Tren', '3 horas', 'Transporte ferroviario', 60000.000, 100),
('Cicla', '1 hora', 'Transporte ecologico', 0.000, 20),
('Moto', '35 minutos', 'Transporte rapido urbano', 8000.000, 60),
('Buseta', '1 hora', 'Transporte urbano publico', 2500.000, 35),
('Teleferico', '15 minutos', 'Transporte aereo por cable', 12000.000, 25);

-- 3-Tabla Rutas
INSERT INTO Rutas 
(Nombre_ruta, Precio_fijo,  Descripcion_general, Kilometraje_recorrido, Duracion_total, Des_nombre)
VALUES
('Ruta Caribe 1', 120000.000, 'Recorrido costero', 250, 4, 'Cartagena'),
('Ruta Capital 1', 90000.000, 'Ruta interurbana rapida', 80, 2, 'Bogota'),
('Ruta Primavera', 100000.000, 'Ruta turística montañosa', 150, 3, 'Medellin'),
('Ruta Pacifico', 110000.000, 'Ruta hacia la costa pacífica', 220, 5, 'Cali'),
('Ruta Carnaval', 130000.000, 'Ruta tematica anual', 180, 4, 'Barranquilla'),
('Ruta Sierra Nevada', 125000.000, 'Ruta ecologica', 90, 2, 'Santa Marta'),
('Ruta Isla Paraiso', 200000.000, 'Ruta maritima turistica', 30, 1, 'San Andres'),
('Ruta Cafetera', 95000.000, 'Ruta cultural', 60, 1, 'Pereira'),
('Ruta Santander', 105000.000, 'Ruta panoramica', 120, 3, 'Bucaramanga'),
('Ruta Amazonas', 180000.000,  'Ruta fluvial y selvatica', 40, 2, 'Leticia');


-- 4-Tabla Pasajeros
INSERT INTO Pasajeros 
(Cedula, Apellidos_nombre, Telefono)
VALUES
('1001001001', 'Gomez Ramirez Laura', '3105001122'),
('1001001002', 'Martínez Lopez Carlos', '3116002233'),
('1001001003', 'Rodríguez Perez Ana', '3127003344'),
('1001001004', 'Sanchez Torres Julio', '3138004455'),
('1001001005', 'Castro Delgado Maria', '3149005566'),
('1001001006', 'Rojas Pineda Andres', '3159006677'),
('1001001007', 'Fernández Silva Lina', '3168007788'),
('1001001008', 'Moreno Ayala Diego', '3177008899'),
('1001001009', 'Patiño Rincon Sofia', '3186009900'),
('1001001010', 'García Ruiz Camila', '3195000011');

-- 5- Tabla Vehiculos
INSERT INTO Vehiculos 
(Matricula, Modelo, Fabricante, Numero_plazas, Caracteristicas_basicas, Mod_tipo)
VALUES
('ABC123', 'Sprinter 2020', 'Mercedes-Benz', 20, 'Aire acondicionado, TV', 'Bus'),
('BCD234', 'A320', 'Airbus', 180, 'Clase economica y ejecutiva', 'Avion'),
('CDE345', 'Lancha XT', 'Yamaha', 12, 'Motor fuera de borda', 'Lancha'),
('DEF456', 'Logan 2018', 'Renault', 4, 'Economico, AC', 'Taxi'),
('EFG567', 'Serie M', 'MetroMed', 300, 'Vagón eléctrico', 'Metro'),
('FGH678', 'Tren 5000', 'CAF', 400, 'Alta capacidad', 'Tren'),
('GHI789', 'Bicicleta Pro', 'GW', 1, 'Montaña', 'Cicla'),
('HIJ890', 'NK 200', 'AKT', 2, 'Moto urbana', 'Moto'),
('IJK901', 'Buseta X1', 'Chevrolet', 30, 'Transporte urbano', 'Buseta'),
('JKL012', 'Teleferico A1', 'Doppelmayr', 10, 'Cabina panoramica', 'Teleferico');

-- 6-Tabla conductores
INSERT INTO Conductores
(Cedula, Nombre_apellidos, Telefono, Direccion, Veh_matricula)
VALUES
('2002002001', 'Juan Perez Soto', '3001112233', 'Calle 10 #5-30', 'ABC123'),
('2002002002', 'Marcela Ruiz Torres', '3002223344', 'Carrera 15 #20-12', 'BCD234'),
('2002002003', 'Luis Fernando Diaz', '3003334455', 'Carrera 8 #14-50', 'CDE345'),
('2002002004', 'Paola Andrea Gomez', '3004445566', 'Calle 45 #17-90', 'DEF456'),
('2002002005', 'Santiago Mora Peña', '3005556677', 'Carrera 7 #33-21', 'EFG567'),
('2002002006', 'Laura Helena Rios', '3006667788', 'Calle 23 #2-11', 'FGH678'),
('2002002007', 'Jose Ramirez Lopez', '3007778899', 'Barrio El Jardín', 'GHI789'),
('2002002008', 'Daniela Trujillo Paz', '3008889900', 'Calle 99 #10-55', 'HIJ890'),
('2002002009', 'Esteban Vargas Leon', '3009990011', 'Carrera 50 #15-10', 'IJK901'),
('2002002010', 'Carolina Mejia Ruiz', '3010001122', 'Calle 12 #3-45', 'JKL012');

-- 7- Tabla Revisiones
INSERT INTO Revisiones
(Codigo_revision, Fecha_de_revision, Diagnostico, Costo_revision, Veh_Matricula)
VALUES
('REV001', '2025-01-10', 'Mantenimiento general', 150000.000, 'ABC123'),
('REV002', '2025-01-12', 'Cambio de aceite', 80000.000, 'BCD234'),
('REV003', '2025-01-15', 'Revision de motor', 200000.000, 'CDE345'),
('REV004', '2025-01-18', 'Ajuste de frenos', 90000.000, 'DEF456'),
('REV005', '2025-01-20', 'Cambio de llantas', 300000.000, 'EFG567'),
('REV006', '2025-01-22', 'Revision eléctrica', 120000.000, 'FGH678'),
('REV007', '2025-01-25', 'Afinacion completa', 180000.000, 'GHI789'),
('REV008', '2025-01-28', 'Revisión anual', 250000.000, 'HIJ890'),
('REV009', '2025-01-30', 'Chequeo general', 160000.000, 'IJK901'),
('REV010', '2025-02-02', 'Diagnostico de vibracion', 110000.000, 'JKL012');

-- 8- Tabla Billetes
INSERT INTO Billetes
(Id_Viaje, Fecha_viaje, Hora_de_llegada_prevista, Importe, Hora_salida, Pas_Cedula, Rut_nombre)
VALUES
('VIA001', '2025-02-10', '12:00:00', 150000, '08:00:00', '1001001001', 'Ruta Caribe 1'),
('VIA002', '2025-02-11', '09:30:00', 90000,  '07:00:00', '1001001002', 'Ruta Capital 1'),
('VIA003', '2025-02-12', '11:15:00', 100000, '08:15:00', '1001001003', 'Ruta Primavera'),
('VIA004', '2025-02-13', '15:00:00', 110000, '10:00:00', '1001001004', 'Ruta Pacifico'),
('VIA005', '2025-02-14', '13:30:00', 130000, '09:30:00', '1001001005', 'Ruta Carnaval'),
('VIA006', '2025-02-15', '10:45:00', 125000, '08:45:00', '1001001006', 'Ruta Sierra Nevada'),
('VIA007', '2025-02-16', '12:20:00', 200000, '11:20:00', '1001001007', 'Ruta Isla Paraiso'),
('VIA008', '2025-02-17', '09:50:00', 95000,  '08:50:00', '1001001008', 'Ruta Cafetera'),
('VIA009', '2025-02-18', '14:10:00', 105000, '11:10:00', '1001001009', 'Ruta Santander'),
('VIA010', '2025-02-19', '16:00:00', 180000, '14:00:00', '1001001010', 'Ruta Amazonas');

-- 9- Puntos_Paradas
INSERT INTO Puntos_paradas 
(Secuencia_lugar, Rut_nombre, Nombre_lugar, Hora_de_llegada, Actividad_a_realizar, Tiempo_de_parada)
VALUES
(1, 'Ruta Caribe 1', 'Terminal Cartagena', '08:30:00', 'Abordaje', 15),
(2, 'Ruta Caribe 1', 'Playa Blanca', '09:30:00', 'Visita turistica', 20),

(1, 'Ruta Capital 1', 'Portal Norte', '07:30:00', 'Chequeo de documentos', 10),
(2, 'Ruta Capital 1', 'Centro Bogota', '08:00:00', 'Parada tecnica', 5),

(1, 'Ruta Primavera', 'Mirador de Medellin', '09:00:00', 'Fotografias', 25),
(2, 'Ruta Primavera', 'Parque Arvi', '10:00:00', 'Caminata guiada', 30),

(1, 'Ruta Pacifico', 'Terminal de Cali', '11:00:00', 'Abordaje', 10),
(2, 'Ruta Pacifico', 'Mirador del Pacifico', '13:00:00', 'Descanso', 15),

(1, 'Ruta Cafetera', 'Plaza de Bolivar', '09:10:00', 'Tour guiado', 20),
(2, 'Ruta Cafetera', 'Mirador de los Nevados', '10:00:00', 'Fotografias', 15);

-- 10- Reparaciones
INSERT INTO Reparaciones
(Codigo_reparacion, Tiempo_empleado, Comentario, Costo_reparacion, Rev_Codigo)
VALUES
('REP001', 45, 'Cambio de filtros', 50000.000, 'REV001'),
('REP002', 60, 'Ajuste menor', 70000.000, 'REV002'),
('REP003', 90, 'Reparacion del motor', 150000.000, 'REV003'),
('REP004', 30, 'Cambio de pastillas', 40000.000, 'REV004'),
('REP005', 120, 'Cambio completo de llantas', 200000.000, 'REV005'),
('REP006', 50, 'Correccion de fallas eléctricas', 60000.000, 'REV006'),
('REP007', 75, 'Afinacion general', 90000.000, 'REV007'),
('REP008', 40, 'Reparacion ligera', 55000.000, 'REV008'),
('REP009', 85, 'Ajuste transmision', 110000.000, 'REV009'),
('REP010', 100, 'Corrección de vibracion', 120000.000, 'REV010');

-- 11- Rutas_modalidades

INSERT INTO Rutas_Modalidades (Mod_tipo, Rut_nombre)
VALUES
('Bus', 'Ruta Caribe 1'),
('Bus', 'Ruta Capital 1'),
('Tren', 'Ruta Primavera'),
('Bus', 'Ruta Pacifico'),
('Bus', 'Ruta Carnaval'),
('Metro', 'Ruta Sierra Nevada'),
('Lancha', 'Ruta Isla Paraiso'),
('Buseta', 'Ruta Cafetera'),
('Taxi', 'Ruta Santander'),
('Lancha', 'Ruta Amazonas');

-- 12- Rutas_DiasOpera

INSERT INTO Rutas_DiasOpera (Rut_nombre, Dia) VALUES
('Ruta Capital 1', 'Lunes'),
('Ruta Capital 1', 'Martes'),
('Ruta Primavera', 'Sabado'),
('Ruta Primavera', 'Domingo'),
('Ruta Pacifico', 'Lunes'),
('Ruta Carnaval', 'Viernes'),
('Ruta Sierra Nevada', 'Martes'),
('Ruta Sierra Nevada', 'Jueves'),
('Ruta Cafetera', 'Lunes'),
('Ruta Amazonas', 'Sabado');
