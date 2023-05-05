-- a.Número de personas que han consultado vuelos mayores a un valor de 5.000.000 de pesos.

SELECT COUNT(*) FROM consultas WHERE valor_vuelo > 5000000;

-- b. Personas que han tomado los vuelos y han hecho el pago en efectivo.

SELECT * FROM compras WHERE forma_pago = 'Efectivo' AND estado = 'Completado';

-- c. Personas mayores a 40 años y que viven en la ciudad de Bogotá.

SELECT * FROM clientes WHERE edad > 40 AND ciudad = 'Bogotá';

-- d. Listar los tipos de viajes turísticos y de negocios que se han hecho con pago con tarjeta de crédito.

SELECT tipo_viaje FROM compras 
JOIN viajes ON compras.id_viaje = viajes.id_viaje 
WHERE forma_pago = 'Tarjeta de crédito' AND (tipo_viaje = 'Turístico' OR tipo_viaje = 'Negocios');

-- e. Listar los viajes activos y cancelados.

SELECT * FROM viajes WHERE estado = 'Activo' OR estado = 'Cancelado';