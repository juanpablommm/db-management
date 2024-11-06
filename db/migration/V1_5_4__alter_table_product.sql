--Se agrega columan productCode para el codiog del producto es una unique key
ALTER TABLE product_management.products ADD productCode varchar(50) NOT NULL;
ALTER TABLE product_management.products ADD CONSTRAINT products_unique UNIQUE (productCode);
