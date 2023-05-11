

CREATE DATABASE ejerciciogrupal5;



CREATE TABLE usuarios (
	id_usuario INT PRIMARY KEY auto_increment,
    	nombre VARCHAR(15),
    	apellido VARCHAR(15),
    	contrasenia VARCHAR(15),
    	zona_horaria VARCHAR(10) DEFAULT 'UTC-3', 
    	genero VARCHAR(1),
    	telefono VARCHAR(15)
    	);
		
		
		
CREATE TABLE `ejerciciogrupal5`.`ingreso` (
  `id_ingreso` INT NOT NULL AUTO_INCREMENT,
  `id_usuario` INT NOT NULL,
  `fecha_hora de ingreso`  TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_ingreso`));
  
  
  
  
  - Modifique el UTC por defecto.Desde UTC-3 a UTC-2.

ALTER TABLE `ejerciciogrupal5`.`usuarios` 
CHANGE COLUMN `zona_horaria` `zona_horaria` VARCHAR(10) NULL DEFAULT 'UTC-2' ;



Parte 4: Creación de registros.
- Para cada tabla crea 8 registros.
Tabla usuarios:
INSERT INTO ejerciciogrupal5.usuarios (nombre, apellido, contrasenia, genero, telefono)
VALUES 
  ('Juan', 'Perez', 'contrasenia1', 'M', '995551234'),
  ('Maria', 'Gonzalez', 'contrasenia2', 'F', '995555678'),
  ('Pedro', 'Rodriguez', 'contrasenia3', 'M', '995559012'),
  ('Lucia', 'Lopez', 'contrasenia4', 'F', '985553456'),
  ('Diego', 'Martinez', 'contrasenia5', 'M', '915557890'),
  ('Sofia', 'Fernandez', 'contrasenia6', 'F', '915552345'),
  ('Luis', 'Garcia', 'contrasenia7', 'M', '985556789'),
  ('Ana', 'Sanchez', 'contrasenia8', 'F', '965550123');
  
  


Tabla ingresos
INSERT INTO ejerciciogrupal5.ingreso (id_usuario)
VALUES 
('1'),  ('2'),  ('3'),  ('4'),   ('5'),  ('6'),  ('7'),  ('8');


Parte 6: Creen una nueva tabla llamada Contactos (id_contacto, id_usuario, numero de telefono,correo electronico).

    CREATE TABLE contactos (
	id_contacto INT PRIMARY KEY auto_increment,
   	 id_usuario INT,
    	telefono VARCHAR(15),
    	correo VARCHAR (30)
   	 );
	 


Parte 7: Modifique la columna teléfono de contacto, para crear un vínculo entre la tabla Usuarios y la tabla Contactos.
Eliminar columna telefono de tabla usuarios
 ALTER TABLE ejerciciogrupal5.usuarios
 DROP COLUMN telefono;

 Agregar columna id_contacto a tabla usuarios
 ALTER TABLE ejerciciogrupal5.usuarios
 ADD id_contacto INT;

Eliminar id_usuario a tabla contactos 
ALTER TABLE ejerciciogrupal5.contactos
 DROP COLUMN id_usuario;

Añadir relación FK con id_contacto
 ALTER TABLE ejerciciogrupal5.usuarios
ADD FOREIGN KEY (id_contacto) REFERENCES contactos(id_contacto);

