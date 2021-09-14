CREATE TABLE curso (
	codigo INT PRIMARY KEY NOT NULL,
	nombre VARCHAR NOT NULL,
	descripcion VARCHAR,
	turno VARCHAR NOT NULL
	)
	

ALTER TABLE curso ADD cupo NUMERIC

INSERT INTO curso VALUES(101, 'Algoritmos', 'Algoritmos y estructura de datos', 'mañana', 35)
INSERT INTO curso VALUES(102, 'Matematica Discreta','', 'Tarde', 30)

--INSERT INTO curso VALUES(103, NULL, '','',20) error el nombre no puede ser nulo
--INSERT INTO curso VALUES(102, 'Matematica Discreta','', 'Tarde', 30) error unique CONSTRAINTS

UPDATE curso SET cupo = 25