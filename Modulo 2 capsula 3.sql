CREATE TABLE persona (id int, nombre VARCHAR(45))

INSERT INTO persona VALUES(5, 'Jorge Rojas')
INSERT INTO persona VALUES(1, 'Diego Rojas')
INSERT INTO persona VALUES(9, 'Juan Perez')
INSERT INTO persona VALUES(3, 'Ana Diaz')

SELECT * from persona

-- SQL, en SQLite no funciona
ALTER TABLE persona ADD CONSTRAINT personaid PRIMARY KEY(id)
CREATE TABLE persona (id int PRIMARY KEY, nombre VARCHAR(45))

-- Al crear una PRIMARY KEY automaticamente se crea un indice
-- clusterizado y en base a este se traen los datos ordenados