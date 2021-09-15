
SELECT MIN(salario) from profesor where fecha_nacimiento LIKE '%198%'

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
	
INSERT INTO pais VALUES (1, 'Argentina')
INSERT INTO pais VALUES (2, 'Peru')
INSERT INTO pais VALUES (3, 'Chile')
INSERT INTO pais VALUES (4, 'Brasil')
INSERT INTO pais VALUES (5, 'Estados Unidos')
INSERT INTO pais VALUES (6, 'Mexico')


INSERT INTO pasajero VALUES (1, 'Jorge', 'Rios', 'Rojas', 'dni', '23323322', '2003-03-02', 1, '343232344', 'fasdfa@fsadf.com', 'fasfas')
INSERT INTO pasajero VALUES (2, 'Diego', 'Perez', 'Cardenaz', 'dni', '43223344', '2004-01-02', 2, 'sdaffasdf', 'fasdfa@fsadf.com', 'fasfas')
INSERT INTO pasajero VALUES (3, 'Mertin', 'Arbe', 'Perez', 'dni', '43233322', '2003-03-02', 2, '343232344', 'fasdfa@fsadf.com', 'fasfas')
INSERT INTO pasajero VALUES (4, 'Mario', 'Amaya', 'Rios', 'dni', '43222333', '2003-03-02', 1, '343232344', 'fasdfa@fsadf.com', 'fasfas')
INSERT INTO pasajero VALUES (5, 'Ana', 'Lopez', 'Rojas', 'dni', '23323322', '2003-03-02', 3, '343232344', 'fasdfa@fsadf.com', 'fasfas')
INSERT INTO pasajero VALUES (6, 'Cristina', 'Perez', '', 'dni', '6555666', '2003-03-02', 4, '343232344', 'fasdfa@fsadf.com', 'fasfas')
INSERT INTO pasajero VALUES (7, 'Laura', 'Marquez', '', 'dni', '44455554', '2003-03-02', 4, '343232344', 'fasdfa@fsadf.com', 'fasfas')
INSERT INTO pasajero VALUES (8, 'Liliana', 'Ruiz', '', 'dni', '22334433', '2003-03-02', 4, '343232344', 'fasdfa@fsadf.com', 'fasfas')
INSERT INTO pasajero VALUES (9, 'Carlos', 'Amaro', '', 'dni', '11222333', '2003-03-02', 1, '343232344', 'fasdfa@fsadf.com', 'fasfas')
INSERT INTO pasajero VALUES (10, 'Daniel', 'Sanchez', '', 'dni', '211122334', '2003-03-02', 5, '343232344', 'fasdfa@fsadf.com', 'fasfas')
INSERT INTO pasajero VALUES (11, 'Eduardo', 'Rios', '', 'dni', '87768657', '2003-03-02', 5, '343232344', 'fasdfa@fsadf.com', 'fasfas')
INSERT INTO pasajero VALUES (12, 'Marcelo', 'Matamala', '', 'dni', '34252345', '2003-03-02', 5, '343232344', 'fasdfa@fsadf.com', 'fasfas')
INSERT INTO pasajero VALUES (13, 'Fernanda', 'Brito', '', 'dni', '87686868', '2003-03-02', 6, '343232344', 'fasdfa@fsadf.com', 'fasfas')
INSERT INTO pasajero VALUES (14, 'Daniel', 'Matamala', '', 'dni', '65454566', '2003-03-02', 6, '343232344', 'fasdfa@fsadf.com', 'fasfas')
INSERT INTO pasajero VALUES (15, 'Cintia', 'Perez', '', 'dni', '98678665', '2003-03-02', 1, '343232344', 'fasdfa@fsadf.com', 'fasfas')

INSERT INTO pago VALUES (1, 21212, '2001-03-02', 1, 15000, 'fafda', 'fasdfasdfasfa', 2121)
INSERT INTO pago VALUES (2, 412342314123, '2001-03-02', 2, 45000, 'fafda', 'fasdfasdfasfa', 4332)
INSERT INTO pago VALUES (3, 432141234312, '2001-03-02', 1, 55000, 'fafda', 'fasdfasdfasfa', 2121)
INSERT INTO pago VALUES (4, 675676576577, '2001-03-02', 1, 25000, 'fafda', 'fasdfasdfasfa', 2121)
INSERT INTO pago VALUES (5, 878787878788, '2001-03-02', 3, 30000, 'fafda', 'fasdfasdfasfa', 2121)
INSERT INTO pago VALUES (6, 989898989899, '2001-03-02', 3, 20000, 'fafda', 'fasdfasdfasfa', 2121)
INSERT INTO pago VALUES (7, 654363346345, '2001-03-02', 4, 10000, 'fafda', 'fasdfasdfasfa', 2121)
INSERT INTO pago VALUES (8, 756577776577, '2001-03-02', 5, 90000, 'fafda', 'fasdfasdfasfa', 2121)
INSERT INTO pago VALUES (9, 343456346666, '2001-03-02', 6, 98000, 'fafda', 'fasdfasdfasfa', 2121)
INSERT INTO pago VALUES (10, 896789876888, '2001-03-02', 6, 99000, 'fafda', 'fasdfasdfasfa', 2121)
INSERT INTO pago VALUES (11, 352453455555, '2001-03-02', 6, 150000, 'fafda', 'fasdfasdfasfa', 2121)
INSERT INTO pago VALUES (12, 324534253245, '2001-03-02', 6, 155000, 'fafda', 'fasdfasdfasfa', 2121)
INSERT INTO pago VALUES (13, 456456456546, '2001-03-02', 7, 23000, 'fafda', 'fasdfasdfasfa', 2121)
INSERT INTO pago VALUES (14, 756756765777, '2001-03-02', 7, 26000, 'fafda', 'fasdfasdfasfa', 2121)
INSERT INTO pago VALUES (15, 678678678888, '2001-03-02', 8, 16000, 'fafda', 'fasdfasdfasfa', 2121)
INSERT INTO pago VALUES (16, 797898798799, '2001-03-02', 9, 98000, 'fafda', 'fasdfasdfasfa', 2121)
INSERT INTO pago VALUES (17, 890890980000, '2001-03-02', 9, 56000, 'fafda', 'fasdfasdfasfa', 2121)
INSERT INTO pago VALUES (18, 890800000000, '2001-03-02', 10, 78000, 'fafda', 'fasdfasdfasfa', 2121)
INSERT INTO pago VALUES (19, 034543534534, '2001-03-02', 10, 79000, 'fafda', 'fasdfasdfasfa', 2121)
INSERT INTO pago VALUES (20, 645645654666, '2001-03-02', 11, 43000, 'fafda', 'fasdfasdfasfa', 2121)
INSERT INTO pago VALUES (21, 567567775677, '2001-03-02', 12, 54000, 'fafda', 'fasdfasdfasfa', 2121)
INSERT INTO pago VALUES (22, 678678768888, '2001-03-02', 13, 53000, 'fafda', 'fasdfasdfasfa', 2121)
INSERT INTO pago VALUES (23, 678678678888, '2001-03-02', 14, 16000, 'fafda', 'fasdfasdfasfa', 2121)


-- 1)Cantidad de pasajeros por país
SELECT COUNT(pasajero.nombre) FROM pais INNER JOIN pasajero ON pasajero.idpais == pais.idpais GROUP BY pais.idpais
SELECT SUM(monto) FROM pagoSELECT COUNT(pasajero.nombre) as cantidad, pais.nombre FROM pais INNER JOIN pasajero ON pasajero.idpais == pais.idpais GROUP BY pais.idpais

-- 2)Suma de todos los pagos realizados
SELECT ROUND(SUM(monto), 2) as totalPagos from pago

-- 3) Suma de todos los pagos que realizó un pasajero. El monto debe aparecer con dos decimales.
SELECT ROUND(SUM(monto), 2) as totalPago, pasajero.nombre, pasajero.apaterno from pago INNER JOIN pasajero ON pago.idpasajero = pasajero.idpasajero GROUP by pasajero.idpasajero

-- 4) Promedio de los pagos que realizó un pasajero.
SELECT ROUND(AVG(pago.monto), 2) as promedioPago, pasajero.nombre, pasajero.apaterno FROM pago, pasajero where pago.idpasajero = pasajero.idpasajero GROUP by pasajero.idpasajero