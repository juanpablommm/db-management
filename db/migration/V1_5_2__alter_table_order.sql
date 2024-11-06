--Se agrega columan product_id para fk entre order y product y se columan seller_id
ALTER TABLE product_management."order" DROP CONSTRAINT order_users_fk_1;
ALTER TABLE product_management."order" DROP COLUMN seller_id;
ALTER TABLE product_management."order" ADD product_id int4 NOT NULL;
ALTER TABLE product_management."order" ADD CONSTRAINT order_products_fk FOREIGN KEY (product_id) REFERENCES product_management.products(products_id);
