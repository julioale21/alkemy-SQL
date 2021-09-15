
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

SELECT nombre, apellido, fecha_nacimiento FROM profesor ORDER BY fecha_nacimiento
SELECT * FROM profesor WHERE salario >= 65000
SELECT * FROM profesor WHERE fecha_nacimiento LIKE '%198_%'
SELECT * FROM profesor LIMIT 5
SELECT * FROM profesor WHERE apellido LIKE 'P%'
SELECT * FROM profesor WHERE fecha_nacimiento LIKE '198_%' AND salario > 80000

