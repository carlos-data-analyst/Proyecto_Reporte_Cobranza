--Testeo de prueba BD--

-- 1.- Lista de todos los clientes con nombre, apellido y correo electrónico

SELECT NOMBRE, APELLIDO, CORREO_ELECTRONICO
FROM dbo.clientes;


-- 2.- Lista de productos
SELECT *
FROM dbo.producto;

-- 3.- Obtener los distintos estados de crédito registrados.
SELECT DISTINCT ESTADO_CREDITO
FROM dbo.estado_credito;

-- 4.- Lista de provincias y países
SELECT DISTINCT PROVINCIA, PAIS
FROM dbo.unidad_geografica;

-- 5.- Mostrar los clientes junto con su score crediticio y género.

SELECT c.NOMBRE, c.APELLIDO, sc.SCORE_CREDITICIO, g.GENERO
FROM dbo.clientes as c
INNER JOIN dbo.score_crediticio as sc
ON c.ID_SCORE_CREDITICIO = sc.ID_SCORE_CREDITICIO
INNER JOIN dbo.genero as g
ON c.ID_GENERO = g.ID_GENERO;

-- 6.- Listar los préstamos con el nombre del cliente y el producto contratado.

SELECT c.NOMBRE, c.APELLIDO, cp.ID_CUENTA, cp.ID_PRODUCTO, p.PRODUCTO
FROM dbo.clientes AS c
INNER JOIN dbo.cuenta_prestamo AS cp
ON c.ID_CLIENTE = CP.ID_CLIENTE
INNER JOIN dbo.producto as p 
ON cp.ID_PRODUCTO = p.ID_PRODUCTO;

-- 7.- Obtener el total de préstamos otorgados por cada canal de desembolso.

SELECT c.CANAL_DESEMBOLSO, COUNT(cp.ID_CUENTA) AS Total_Prestamos
FROM dbo.cuenta_prestamo AS cp
INNER JOIN dbo.canal AS c
ON cp.ID_CANAL_DESEMBOLSO = c.ID_CANAL_DESEMBOLSO
GROUP BY c.CANAL_DESEMBOLSO;
