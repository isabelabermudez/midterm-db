# Práctica Parcial: Base de datos Servilimar 

Esta práctica consiste en crear una base de datos para el Servicio Servilimar y su sistema de turnos.
Para ello se debe desplegar dos contenedores, el primero debe usar la imagen del motor de bases de datos **PostgreSQL v14** 
y el segundo usa la imagen de la herramienta **PGAdmin4**, posteriormente se hace su debida configuración y conexion del servidor y la
base de datos. Por último se incluyen las instrucciones DDL y DML correspondientes al sistema de generación de turnos.

---

## 1.Despliegue de contenedores con docker

## Despliegue del contenedor de PostgreSQL_v14
el siguiente comando ejecuta una imagen de Postgres version 14 dentro de un contenedor de Docker:

```bash 
 docker run --name db_ulimar -e POSTGRES_USER=ulimar -e POSTGRES_PASSWORD=ex4men_db -p 5432:5432 postgres:14
```
## Despliegue de contendor de PGAdmin4_v4

Con este comando se crea un contenedor para la interfaz g´rafica de administración PGAdmin4:

```bash 
docker run --rm -p 5050:80 --link db_ulimar:db_ulimar -e "PGADMIN_DEFAULT_EMAIL=usuario@servilimar.com" -e "PGADMIN_DEFAULT_PASSWORD=limar#123" -d dpage/pgadmin4
```

## 2.Configuración y conexión en PGAdmin4

Para conectarse a la base de datos desde PGAdmin4

1. Abrir **PGAmin4** desde el navegador a través de http://localhost:5050.
2. Crear una nuevo servidor seleccionando **add new server**
3. En la pestaña **General**, asignar el nombre: `Servidor LiMar`.
4. En la pestaña **connection**, completar los campos:
    - **Host name/address:** db_ulimar
    - **Port:** 5432
    - **Username:** ulimar
    - **Password:** ex4men_db

Luego, guardar la configuración y conectar el servidor.
La base de datos PostgreSQL desplegada con Docker quedará accesible desde PGAdmin.

## 3.Creación de nueva base de datos con el nombre servilimar.

Para crear una nueva base de datos se debe:

1. Hacer click derecho en el la seccionDatabases del servidor, en el panel izquierdo.
2. Seleccionar la opción crear una base de datos.
3. Llenar el campo nombre con servilimar.

Luego, guardar la configuración.
De esta manera se créa correctamente la base de datos servilimar.
## 4.Creación de las instrucciones DDl

Las instrucciones DDL se encuentran en el archivo [`LiMar.ddl.sql`](./src/DDL/LiMar.ddl.sql).
Ahí se definen las tablas y atributos para las siguientes entidades:

- `tipos_usuario`
- `ciudad`
- `usuario`
- `empleado`
- `medio`
- `servicio`
- `notificación`
- `turno`


## 5. Creación de las instrucciones DMl.

Las instrucciones DML están en el archivo [`LiMar.dml.sql`](./src/DML/LiMar.dml.sql).
Aquí se agregan almenos 10 registros para las 8 tablas. 

