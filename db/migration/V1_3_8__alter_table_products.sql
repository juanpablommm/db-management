--Se agrega las columnas de marca y precio para el producto
-- Se agregan las columnas de marca y precio para el producto
ALTER TABLE product_management.products ADD COLUMN "price" numeric(10, 2) NOT NULL,
ADD COLUMN "brand" varchar(50) NOT NULL;
