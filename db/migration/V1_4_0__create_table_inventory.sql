--Se crea la tabla inventario para asocirar los productos que pertenecen a un usario
CREATE TABLE product_management.inventory (
                                              inventory_id int4 NOT NULL,
                                              user_id int4 NOT NULL,
                                              product_id int4 NOT NULL,
                                              CONSTRAINT inventory_pk PRIMARY KEY (inventory_id),
                                              CONSTRAINT inventory_users_fk FOREIGN KEY (user_id) REFERENCES user_management.users(user_id),
                                              CONSTRAINT inventory_products_fk FOREIGN KEY (product_id) REFERENCES product_management.products(products_id)
);

CREATE SEQUENCE  product_management.inventory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE  product_management.inventory
    ALTER COLUMN inventory_id
        SET DEFAULT nextval('product_management.inventory_id_seq');


