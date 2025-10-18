CREATE TABLE tipos_usuario(
    tipos_usuarioId INT PRIMARY KEY,
    nombre VARCHAR(100)
);

CREATE TABLE ciudad(
    ciudad_id INT PRIMARY KEY,
    nombre VARCHAR(100),
    codigo_postal VARCHAR(100)
);

CREATE TABLE usuario (
    usuario_id INT PRIMARY KEY,
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    tipo_usuario INT,
    condicion_especial VARCHAR(200),
    ciudad_id INT,
    FOREIGN KEY (tipo_usuario) REFERENCES tipos_usuario(tipos_usuarioId),
    FOREIGN KEY (ciudad_id) REFERENCES ciudad(ciudad_id)
);

CREATE TABLE empleado(
    empleado_id INT PRIMARY KEY,
    cargos VARCHAR(200),
    departamentos VARCHAR(100),
    usuario_id INT,
    FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
);

CREATE TABLE medio(
    medio_id INT PRIMARY KEY,
    tipo_medio VARCHAR(100)
);

CREATE TABLE notificacion(
    notificacion_id INT PRIMARY KEY,
    mensaje VARCHAR(200),
    fecha_envio TIMESTAMP,
    estado VARCHAR(100),
    usuario_id INT,
    medio_id INT,
    FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
    FOREIGN KEY (medio_id) REFERENCES medio(medio_id)
);

CREATE TABLE servicio(
    servicio_id INT PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion TEXT,
    estado VARCHAR(100)
);

CREATE TABLE turno(
    turno_id INT PRIMARY KEY,
    fecha DATE,
    hora_inicio TIME,
    hora_fin TIME,
    estado VARCHAR(100),
    usuario_id INT,
    servicio_id INT,
    empleado_id INT,
    FOREIGN KEY (empleado_id) REFERENCES empleado(empleado_id),
    FOREIGN KEY (servicio_id) REFERENCES servicio(servicio_id),
    FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id)
);