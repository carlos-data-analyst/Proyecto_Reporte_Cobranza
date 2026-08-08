--Vista 1.- Situación general de impago --

CREATE VIEW vista_cartera_atraso AS
SELECT 
    SUM(cp.MONTO) AS Monto_Total_Cartera_Vencida,
    tf.TIPO_FINANCIACION AS Motivo_Credito,
    SUM(cp.MONTO) AS Monto_Por_Motivo,
    c.CANAL_DESEMBOLSO AS Canal_Desembolso,
    SUM(cp.MONTO) AS Monto_Por_Canal,
    ug.PROVINCIA AS Region,
    SUM(cp.MONTO) AS Monto_Por_Region
FROM cuenta_prestamo cp
INNER JOIN tipo_financiacion tf ON cp.ID_TIPO_FINANCIACION = tf.ID_TIPO_FINANCIACION
INNER JOIN canal c ON cp.ID_CANAL_DESEMBOLSO = c.ID_CANAL_DESEMBOLSO
INNER JOIN clientes cl ON cp.ID_CLIENTE = cl.ID_CLIENTE
INNER JOIN unidad_geografica ug ON cl.ID_PROVINCIA = ug.ID_PROVINCIA
WHERE cp.ID_ESTADO_CREDITO = 2 -- suponiendo que 2 = 'En atraso'
GROUP BY tf.TIPO_FINANCIACION, c.CANAL_DESEMBOLSO, ug.PROVINCIA;


--Vista 2.- 
CREATE VIEW vista_clientes_atraso AS
SELECT 
    cl.NOMBRE,
    cl.APELLIDO,
    cl.CORREO_ELECTRONICO,
    ci.CIUDAD,
    cp.MONTO AS Monto_Deuda,
    tf.TIPO_FINANCIACION AS Motivo_Credito,
    cp.DIAS_MORA
FROM cuenta_prestamo cp
INNER JOIN clientes cl ON cp.ID_CLIENTE = cl.ID_CLIENTE
INNER JOIN ciudad ci ON cl.ID_CIUDAD = ci.ID_CIUDAD
INNER JOIN tipo_financiacion tf ON cp.ID_TIPO_FINANCIACION = tf.ID_TIPO_FINANCIACION
WHERE cp.ID_ESTADO_CREDITO = 2;