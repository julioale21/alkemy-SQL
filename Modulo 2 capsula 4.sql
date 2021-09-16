
CREATE TABLE profesor (
	id INT AUTO_INCREMENT NOT NULL, 
	nombre VARCHAR(45) NOT NULL, 
	apellido VARCHAR(45) NOT NULL,
	fecha_nacimiento DATE NOT NULL,
	salario FLOAT NOT NULL,
  	PRIMARY KEY (id)
	)
	
CREATE TABLE curso (
	codigo INT AUTO_INCREMENT NOT NULL, 
	nombre VARCHAR(45) NOT NULL,
	descripcion VARCHAR(45) NOT NULL,
	cupo INT NOT NULL,
	turno VARCHAR(45) NOT NULL,
	PROFESOR_id INT,
	FOREIGN KEY (PROFESOR_id) REFERENCES profesor(id)
  	PRIMARY KEY(codigo)
	)
	
CREATE TABLE estudiante (
	legajo INT AUTO_INCREMENT NOT NULL,
	nombre VARCHAR(45) NOT NULL,
	apellido VARCHAR(45) NOT NULL,
	fecha_nacimiento DATE NOT NULL,
	carrera VARCHAR(45) NOT NULL,
  	PRIMARY KEY(legajo)
	)
	
CREATE TABLE inscripcion (
	numero INT AUTO_INCREMENT NOT NULL,
	CURSO_codigo INT,
	ESTUDIANTE_legajo INT,
	fecha_hora TIMESTAMP NOT NULL,
	FOREIGN KEY (ESTUDIANTE_legajo) REFERENCES estudiante(legajo),
	FOREIGN KEY (CURSO_codigo) REFERENCES curso(codigo)
  	PRIMARY KEY(numero)
	)
	


INSERT INTO profesor VALUES(1, 'Jorge', 'Perez', '1982-03-06', 55000)
INSERT INTO profesor VALUES(2, 'Juan', 'Diaz', '1985-01-06', 75000) 
INSERT INTO profesor VALUES(3, 'Diego', 'Ramoz', '1982-03-09', 80000) 
INSERT INTO profesor VALUES(4, 'Mario', 'Roman', '1990-07-23', 65000) 
INSERT INTO profesor VALUES(5, 'Pedro', 'Tomas', '1991-09-08', 50000)
INSERT INTO profesor VALUES(6, 'Ana', 'Paz', '1997-12-12', 90000)


INSERT INTO estudiante values(1, 'Lucia', 'Perez', '2000-02-03', 'Contador')
INSERT INTO estudiante values(2, 'Marcos', 'Fuentes', '2003-05-13', 'Ingenieria Forestal')
INSERT INTO estudiante values(3, 'Maria', 'Arbe', '2005-02-09', 'Contador')
INSERT INTO estudiante values(4, 'Pedro', 'Peña', '2003-12-03', 'Biologia')
INSERT INTO estudiante values(5, 'Oscar', 'Piedrabuena', '2000-02-03', 'Ingenieria Forestal')
INSERT INTO estudiante values(6, 'Miriam', 'Gonzalez', '1992-02-03', 'Contador')
INSERT INTO estudiante values(7, 'Mabel', 'Perez', '2004-11-09', 'Contador')
INSERT INTO estudiante values(8, 'Dario', 'Astudillo', '2000-02-03', 'Ingenieria Forestal')
INSERT INTO estudiante values(9, 'Roberto', 'Gonzalez', '2004-06-08', 'Biologia')
INSERT INTO estudiante values(10, 'Roberto', 'Sanchez', '2000-02-03', 'Biologia')


INSERT INTO curso VALUES(1, 'curso A', 'este es el curso A', 20, 'mañana', 1)
INSERT INTO curso VALUES(2, 'curso B', 'este es el curso B', 30, 'tarde', 2)
INSERT INTO curso VALUES(3, 'curso C', 'este es el curso C', 20, 'tarde', 3)
INSERT INTO curso VALUES(4, 'curso D', 'este es el curso D', 20, 'mañana', 4)
INSERT INTO curso VALUES(5, 'curso E', 'este es el curso E', 20, 'mañana', 5)
INSERT INTO curso VALUES(6, 'curso F', 'este es el curso F', 20, 'tarde', 6)
INSERT INTO curso VALUES(7, 'curso AN', 'este es el curso AN', 20, 'noche', 1)
INSERT INTO curso VALUES(8, 'curso BN', 'este es el curso BN', 30, 'noche', 1)
INSERT INTO curso VALUES(9, 'curso CN', 'este es el curso CN', 20, 'noche', 2)
INSERT INTO curso VALUES(10, 'curso DN', 'este es el curso DN', 20, 'noche', 2)
INSERT INTO curso VALUES(11, 'curso EN', 'este es el curso EN', 20, 'noche', 2)
INSERT INTO curso VALUES(12, 'curso FN', 'este es el curso FN', 20, 'noche', 6)
INSERT INTO curso VALUES(105, 'curso AN105', 'este es el curso AN105', 20, 'noche', 1)


INSERT INTO inscripcion VALUES(1, 1, 1, '2021-03-05')
INSERT INTO inscripcion VALUES(2, 2, 1, '2021-03-05')
INSERT INTO inscripcion VALUES(3, 3, 1, '2021-03-05')
INSERT INTO inscripcion VALUES(4, 1, 2, '2021-03-05')
INSERT INTO inscripcion VALUES(5, 1, 3, '2021-03-05')
INSERT INTO inscripcion VALUES(6, 2, 4, '2021-03-05')
INSERT INTO inscripcion VALUES(7, 3, 4, '2021-03-05')
INSERT INTO inscripcion VALUES(8, 1, 5, '2021-03-05')
INSERT INTO inscripcion VALUES(9, 4, 10, '2021-03-05')
INSERT INTO inscripcion VALUES(10, 5, 10, '2021-03-05')
INSERT INTO inscripcion VALUES(11, 6, 8, '2021-03-05')
INSERT INTO inscripcion VALUES(12, 6, 5, '2021-03-05')
INSERT INTO inscripcion VALUES(13, 5, 9, '2021-03-05')
INSERT INTO inscripcion VALUES(14, 5, 1, '2021-03-05')
INSERT INTO inscripcion VALUES(15, 5, 2, '2021-03-05')
INSERT INTO inscripcion VALUES(16, 6, 3, '2021-03-05')
INSERT INTO inscripcion VALUES(17, 6, 4, '2021-03-05')
INSERT INTO inscripcion VALUES(18, 105, 4, '2021-03-05')


-- 1) Escriba una consulta que devuelva la cantidad de profesores que dictan más de un curso en el turno Noche.
SELECT * FROM profesor 
	WHERE profesor.id IN 
		(SELECT profesor_id from curso 
			WHERE turno = 'noche' 
				GROUP by profesor_id 
					HAVING COUNT(profesor_id) > 1)
					
-- 2) Escriba una consulta para obtener la información de todos los estudiantes que no realizan el curso con código 105.
SELECT * FROM estudiante 
	WHERE legajo IN 
		(SELECT inscripcion.estudiante_legajo FROM curso, inscripcion 
			WHERE inscripcion.CURSO_codigo = curso.codigo 
				AND NOT curso.codigo = '105' 
					GROUP BY inscripcion.ESTUDIANTE_legajo)

