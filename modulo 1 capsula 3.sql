
CREATE TABLE profesor (
	id INT AUTO_INCREMENT NOT NULL, 
	nombre VARCHAR NOT NULL, 
	apellido VARCHAR NOT NULL, 
	fecha_nacimiento DATE NOT NULL, 
	salario int NOT NULL, 
	PRIMARY KEY (id)
	)

INSERT INTO profesor VALUES (1, 'Juan', 'Pérez', '1990-06-06', 55000)
INSERT INTO profesor VALUES (2, 'María Emilia', 'Paz', '1984-07-15', 72000)
INSERT INTO profesor VALUES (3, 'Martin', 'Correa', '1987-12-07', 63000)
INSERT INTO profesor VALUES (4, 'Luía', 'Díaz', '1991-02-24', 45000) 
INSERT INTO profesor VALUES (5, 'Raúl', 'Martínez', '1980-10-15', 85000) 
INSERT INTO profesor VALUES (6, 'Mabel', 'Ríos', '1982-06-12', 83000)


CREATE TABLE pais (
	idpais int AUTO_INCREMENT NOT NULL, 
	nombre VARCHAR NOT NULL, 
	PRIMARY KEY (idpais)
	)
	
CREATE TABLE pasajero (
	idpasajero int AUTO_INCREMENT NOT NULL, 
	nombre VARCHAR NOT NULL, 
	apaterno VARCHAR NOT NULL, 
	amaterno VARCHAR NOT NULL, 
	tipo_documento VARCHAR NOT NULL, 
	numero_documento VARCHAR NOT NULL, 
	fecha_nacimiento DATA NOT NULL, 
	idpais int NOT NULL, 
	telefono VARCHAR NOT NULL, 
	email VARCHAR NOT NULL, 
	clave VARCHAR NOT NULL,
	PRIMARY KEY (idpasajero)
	FOREIGN KEY (idpais) REFERENCES pais(idpais)
  )
	
CREATE TABLE pago (
	idpago int AUTO_INCREMENT NOT NULL, 
	idreserva int NOT NULL, 
	fecha date NOT NULL, 
	idpasajero int NOT NULL,
  	monto int, 
	tipo_comporbante VARCHAR NOT NULL, 
	numero_comprobante VARCHAR NOT NULL, 
	impuesto int NOT NULL,
	PRIMARY KEY (idpago)
  	FOREIGN KEY (idpasajero) REFERENCES pasajero(idpasajero)
	)

SELECT nombre, apellido, fecha_nacimiento FROM profesor ORDER BY fecha_nacimiento
SELECT * FROM profesor WHERE salario >= 65000
SELECT * FROM profesor WHERE fecha_nacimiento LIKE '%198_%'
SELECT * FROM profesor LIMIT 5
SELECT * FROM profesor WHERE apellido LIKE 'P%'
SELECT * FROM profesor WHERE fecha_nacimiento LIKE '198_%' AND salario > 80000

