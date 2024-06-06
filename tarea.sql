--Restricciones para eliminar
-- Tabla1 
ALTER TABLE detalle_pedido1
DROP FOREIGN KEY detalle_pedido_ibfk_1_1_H;
DROP FOREIGN KEY detalle_pedido_ibfk_2_1_H;
--Tabla2
ALTER TABLE detalle_pedido2
DROP FOREIGN KEY detalle_pedido_ibfk_1_2_H;
DROP FOREIGN KEY detalle_pedido_ibfk_2_2_H;

-- eliminar-clave 
--Tabla1
ALTER TABLE detalle_pedido_1_h DROP PRIMARY KEY; 
--Tabla2
ALTER TABLE detalle_pedido_2_h DROP PRIMARY KEY;


--creaciondecolumna-ID
ALTER TABLE detalle_pedido_1_h
ADD id INT AUTO_INCREMENT PRIMARY KEY FIRST;

ALTER TABLE detalle_pedido_2_h
ADD id INT AUTO_INCREMENT PRIMARY KEY FIRST;


--relaciones-de-tabla  Detalle_pedido_1_h
--tabla1
ALTER TABLE `detalle_pedido_1_h` ADD  CONSTRAINT `detalle_pedido_ibfk_1_1_H` 
FOREIGN KEY (`codigo_pedido`) REFERENCES `pedido`(`codigo_pedido`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `detalle_pedido_1_h` ADD  CONSTRAINT `detalle_pedido_ibfk_2_1_H` 
FOREIGN KEY (`codigo_producto`) REFERENCES `producto`(`codigo_producto`) ON DELETE RESTRICT ON UPDATE RESTRICT;

-- relaciones-de-tabla Detalle_pedido_2_h

--tabla2
ALTER TABLE `detalle_pedido_2_h` ADD  CONSTRAINT `detalle_pedido_ibfk_1_2_H` 
FOREIGN KEY (`codigo_pedido`) REFERENCES `pedido`(`codigo_pedido`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `detalle_pedido_2_h` ADD  CONSTRAINT `detalle_pedido_ibfk_2_2_H` 
FOREIGN KEY (`codigo_producto`) REFERENCES `producto`(`codigo_producto`) ON DELETE RESTRICT ON UPDATE RESTRICT;