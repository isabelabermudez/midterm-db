INSERT INTO tipos_usuario VALUES
    (1,'clientes'),
    (2,'empleados'),
    (3,'proveedores'),
    (4,'contratistas'),
    (5,'visitantes'),
    (6,'socios'),
    (7,'practicantes');

INSERT INTO ciudad (ciudad_id,nombre,codigo_postal) VALUES
    (1,'Cali','760001'),
    (2,'Bogotá','110111'),
    (3,'Cartagena','130001'),
    (4,'Medellín','050001'),
    (5,'Barranquilla','080001'),
    (6,'Santa Marta','470001'),
    (7,'Palmira','764001'),
    (8,'Jamundí','764301'),
    (9,'Florida','764091'),
    (10,'Buenaventura','763001');

INSERT INTO usuario (usuario_id,nombre,apellido,tipo_usuario,
                     condicion_especial,ciudad_id) VALUES
    (1,'Juan Luis','Rodrigez Moreno',1,'adulto mayor',5),
    (2,'Ana María','Gómez Pérez',1,NULL,1),
    (3,'Carlos','Polo Campo',2,NULL,7),
    (4,'Luisa Fernanda','Sánchez Díaz',3,NULL,8),
    (5,'Jóse Miguel','López Vargas',2,NULL,9),
    (6,'María José','Martínez Ruiz',1,'embarazada',6),
    (7,'Paola Andrea','García Moreno',1,'persona con movilidad reducida',4),
    (8,'Fernando','Torres Pérez',4,NULL,1),
    (9,'Carolina','Suárez Castillo',7,NULL,10),
    (10,'Mario Hugo','Cruz Mendoza',6,NULL,2),
    (11, 'Daniela', 'Ortega Ruiz', 2, NULL, 1),
    (12, 'Jorge', 'Castaño Pérez', 2, NULL, 2),
    (13, 'Marcela', 'González Vega', 2, NULL, 3),
    (14, 'Santiago', 'Morales Herrera', 2, NULL, 4),
    (15, 'Valentina', 'Ríos Martínez', 2, NULL, 5),
    (16, 'Esteban', 'Navarro Jiménez', 2, NULL, 6),
    (17, 'Camila', 'Peña Salazar', 2, NULL, 7),
    (18, 'Mateo', 'Luna Paredes', 2, NULL, 8);


INSERT INTO empleado(empleado_id,cargos,departamentos,usuario_id) VALUES
    (1,'Asesor','Atención al cliente',3),
    (2,'Técnico','Mantenimiento',5),
    (3,'Cajero','Finanzas',11),
    (4,'Mensajero','Despacho',12),
    (5,'Técnico','Soporte',13),
    (6,'Recepcionista','Administración',14),
    (7,'Asesor','Atención al cliente',15),
    (8,'Inspector','Ventas',16),
    (9,'Supervisor','Tecnología',17),
    (10,'Encargado','Recursos humanos',18);

INSERT INTO medio (medio_id,tipo_medio) VALUES
    (1,'Correo electrónico'),
    (2,'SMS'),
    (3,'Llamada telefónica'),
    (4,'WhatsApp'),
    (5,'Carta física'),
    (6,'Aplicación móvil'),
    (7,'página Web'),
    (8,'Telegram'),
    (9,'presencial'),
    (10,'fax');

INSERT INTO servicio (servicio_id,nombre,descripcion,estado) VALUES
    (1,'despacho','Atención rápida a personas con prioridad','activo'),
    (2,'entrega de artículos','Recepción y entrega de pedidos a clientes','activo'),
    (3,'Atención preferencial','Atención rápida a personas con prioridad','activo'),
    (4,'atención al cliente','Resolución de dudas y solicitudes generales','activo'),
    (5,'consultoría','Asesoría especializada en servicios y productos','activo'),
    (6,'Mantenimiento','Revisión y reparación de equipos','activo'),
    (7,'Soporte técnico','Ayuda en fallos de hardware o software','activo'),
    (8,'Capacitación','Sesiones informativas para usuarios','activo'),
    (9,'Auditoría','Revisión y evaluación de procesos internos','inactivo'),
    (10,'Actualización','Actualización de sistemas y software','inactivo');

INSERT INTO notificacion (notificacion_id,mensaje,fecha_envio,estado,usuario_id,medio_id) VALUES
    (1,'Notificaión de registro al sistema','2025-10-15 08:30:00' ,'recibido',1,1),
    (2,'Notificaión de registro al sistema', '2025-10-15 08:45:00','recibido',2,3),
    (3,'Notificaión de registro al sistema','2025-10-15 09:00:00' ,'recibido',4,5),
    (4,'Notificaión de registro al sistema','2025-10-15 09:15:00' ,'recibido',6,2),
    (6,'Notificaión de registro al sistema','2025-10-16 08:00:00' ,'recibido',7,6),
    (7,'Notificaión de registro al sistema','2025-10-16 08:30:00' ,'recibido',8,8),
    (8,'Notificaión de registro al sistema','2025-10-16 09:00:00' ,'recibido',3,1),
    (9,'Notificaión de registro al sistema','2025-10-16 09:30:00' ,'recibido',5,4),
    (10,'Notificaión de registro al sistema','2025-10-17 08:00:00' ,'recibido',13,6),
    (11,'Notificaión de registro al sistema','2025-10-17 08:30:00' ,'recibido',16,7),
    (12,'Notificaión de registro al sistema','2025-10-17 09:00:00' ,'recibido',12,3),
    (13,'Notificaión de registro al sistema','2025-10-17 09:30:00' ,'recibido',11,3);

INSERT INTO turno(turno_id,fecha,hora_inicio,hora_fin,estado,usuario_id,servicio_id,empleado_id) VALUES
    (1,'2025-10-18','08:00:00','09:00:00','activo',1,1,4),
    (2,'2025-10-18','09:00:00','10:00:00','activo',2,4,1),
    (3,'2025-10-18','10:00:00','11:00:00','activo',4,6,2),
    (4,'2025-10-19','08:30:00','09:30:00','activo',3,7,5),
    (5,'2025-10-19','09:30:00','10:30:00','activo',7,7,5),
    (6,'2025-10-20', '08:00:00', '09:00:00','activo',11,9,8),
    (7,'2025-10-20', '09:00:00', '10:00:00','activo',8,1,4),
    (8,'2025-10-20', '10:00:00', '11:00:00','activo',4,4,1),
    (9,'2025-10-21', '08:00:00', '09:00:00','inactivo',3,4,1),
    (10,'2025-10-21', '09:00:00', '10:00:00','activo',5,5,8);