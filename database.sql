-- Base de datos: `prueba_login`
create database prueba_login;
use prueba_login;


-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `id` int(11) UNSIGNED NOT NULL,
  `cedula` int(11) NOT NULL,
  `rsponse` json NOT NULL
) 

--
-- insertando datos 
--
use prueba_login;
select * from login;
INSERT INTO `login` (`id`, `cedula`, `rsponse`) VALUES
(1, 123456789, 'null'),
(2, 987654321, 'null'),
(3, 12345, '{\"cliente\": {\"cliente_id\": 70765765, \"identificacion\": \"3614582\", \"nombrecompleto\": \"DARIO GUTIERREZ GALVIS\"}, \"listado_servicios\": {\"111\": \"CONTABILIDAD\", \"119\": \"SOPORTE\"}}'),
(4, 54321, '{\"cliente\": {\"cliente_id\": 70765765, \"identificacion\": \"3614582\", \"nombrecompleto\": \"DARIO GUTIERREZ GALVIS\"}, \"listado_menus\": {\"1\": \"Estado de cuenta\", \"2\": \"Pago de Mora\", \"3\": \"Contratos Afianzados\", \"4\": \"Estudio Arrendamiento\"}}'),
(5, 123456, '{\"cliente\": {\"cliente_id\": 89097654, \"identificacion\": \"16932023\", \"nombrecompleto\": \"PEDRO SANCHEZ\"}, \"listado_menus\": {\"1\": \"Estado de cuenta\", \"2\": \"Pagar\", \"3\": \"ya Realice Pago\", \"4\": \"Compromiso de Pago\"}}');

