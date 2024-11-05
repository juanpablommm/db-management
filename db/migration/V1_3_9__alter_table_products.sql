--Se agrega las columna enabled para saber si el producto esta disponible
ALTER TABLE product_management.products ADD COLUMN "enabled" boolean NOT NULL;
