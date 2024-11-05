--Se realiza alter en la tabla productos, apra agregar columna para la descripcion la foto del producto
ALTER TABLE product_management.products ADD description text NOT NULL;

ALTER TABLE product_management.products ADD url_product_image varchar(300) NULL;
