---Tabla destinos
INSERT INTO Destinos (Nombre_destino, Descripcion) VALUES
('Cartagena', 'Ciudad turística'),
('Bogotá', 'Capital del país'),
('Medellín', 'Ciudad de la eterna primavera'),
('Cali', 'Capital de la salsa'),
('Barranquilla', 'Ciudad del carnaval'),
('Santa Marta', 'Playa y montaña'),
('San Andrés', 'Mar de siete colores'),
('Pereira', 'Región cafetera'),
('Bucaramanga', 'Ciudad bonita'),
('Leticia', 'Amazonas colombiano');

---Tabla Modalidad de transportes
INSERT INTO Modalidades_transportes 
(Tipo_medio, Tiempo_estandar, Caracteristicas, Precio_base, Velocidad_promedio)
VALUES
('Bus', '4 horas', 'Transporte terrestre intermunicipal', 45000.000, 80),
('Avión', '1 hora', 'Transporte aéreo nacional', 250000.000, 600),
('Lancha', '45 minutos', 'Transporte marítimo local', 30000.000, 50),
('Taxi', '30 minutos', 'Transporte urbano privado', 15000.000, 40),
('Metro', '20 minutos', 'Transporte masivo eléctrico', 3000.000, 70),
('Tren', '3 horas', 'Transporte ferroviario', 60000.000, 100),
('Cicla', '1 hora', 'Transporte ecológico', 0.000, 20),
('Moto', '35 minutos', 'Transporte rápido urbano', 8000.000, 60),
('Buseta', '1 hora', 'Transporte urbano público', 2500.000, 35),
('Teleférico', '15 minutos', 'Transporte aéreo por cable', 12000.000, 25);

-- Tabla Rutas
INSERT INTO Rutas 
(Nombre_ruta, Precio_fijo, Dias_opera, Descripcion_general, Kilometraje_recorrido, Duracion_total, Des_nombre)
VALUES
('Ruta Caribe 1', 120000.000, 'Lunes a Viernes', 'Recorrido costero', 250, 4, 'Cartagena'),
('Ruta Capital 1', 90000.000, 'Todos los días', 'Ruta interurbana rápida', 80, 2, 'Bogotá'),
('Ruta Primavera', 100000.000, 'Lunes, Miércoles, Viernes', 'Ruta turística montañosa', 150, 3, 'Medellín'),
('Ruta Pacífico', 110000.000, 'Martes y Jueves', 'Ruta hacia la costa pacífica', 220, 5, 'Cali'),
('Ruta Carnaval', 130000.000, 'Sábado y Domingo', 'Ruta temática anual', 180, 4, 'Barranquilla'),
('Ruta Sierra Nevada', 125000.000, 'Todos los días', 'Ruta ecológica', 90, 2, 'Santa Marta'),
('Ruta Isla Paraíso', 200000.000, 'Viernes a Domingo', 'Ruta marítima turística', 30, 1, 'San Andrés'),
('Ruta Cafetera', 95000.000, 'Todos los días', 'Ruta cultural', 60, 1, 'Pereira'),
('Ruta Santander', 105000.000, 'Lunes a Viernes', 'Ruta panorámica', 120, 3, 'Bucaramanga'),
('Ruta Amazonas', 180000.000, 'Martes y Sábado', 'Ruta fluvial y selvática', 40, 2, 'Leticia');


--- Tabla Pasajeros
INSERT INTO Pasajeros 
(Cedula, Apellidos_nombre, Telefono)
VALUES
('1001001001', 'Gómez Ramírez Laura', '3105001122'),
('1001001002', 'Martínez López Carlos', '3116002233'),
('1001001003', 'Rodríguez Pérez Ana', '3127003344'),
('1001001004', 'Sánchez Torres Julio', '3138004455'),
('1001001005', 'Castro Delgado María', '3149005566'),
('1001001006', 'Rojas Pineda Andrés', '3159006677'),
('1001001007', 'Fernández Silva Lina', '3168007788'),
('1001001008', 'Moreno Ayala Diego', '3177008899'),
('1001001009', 'Patiño Rincón Sofía', '3186009900'),
('1001001010', 'García Ruiz Camila', '3195000011');

--- Tabla Vehiculos
INSERT INTO Vehiculos 
(Matricula, Modelo, Fabricante, Numero_plazas, Caracteristicas_basicas, Mod_tipo)
VALUES
('ABC123', 'Sprinter 2020', 'Mercedes-Benz', 20, 'Aire acondicionado, TV', 'Bus'),
('BCD234', 'A320', 'Airbus', 180, 'Clase económica y ejecutiva', 'Avión'),
('CDE345', 'Lancha XT', 'Yamaha', 12, 'Motor fuera de borda', 'Lancha'),
('DEF456', 'Logan 2018', 'Renault', 4, 'Económico, AC', 'Taxi'),
('EFG567', 'Serie M', 'MetroMed', 300, 'Vagón eléctrico', 'Metro'),
('FGH678', 'Tren 5000', 'CAF', 400, 'Alta capacidad', 'Tren'),
('GHI789', 'Bicicleta Pro', 'GW', 1, 'Montaña', 'Cicla'),
('HIJ890', 'NK 200', 'AKT', 2, 'Moto urbana', 'Moto'),
('IJK901', 'Buseta X1', 'Chevrolet', 30, 'Transporte urbano', 'Buseta'),
('JKL012', 'Teleférico A1', 'Doppelmayr', 10, 'Cabina panorámica', 'Teleférico');
