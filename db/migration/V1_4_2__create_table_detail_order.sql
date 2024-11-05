--Se crea la tabla detail_order para asociar los productos  a la orden u ordenes
CREATE TABLE product_management.detail_order (
                                                 detail_order_id int4 NOT NULL,
                                                 product_id int4 NOT NULL,
                                                 order_id int4 NOT NULL,
                                                 CONSTRAINT detail_order_id_pk PRIMARY KEY (detail_order_id),
                                                 CONSTRAINT detail_order_products_fk FOREIGN KEY (product_id) REFERENCES product_management.products(products_id),
                                                 CONSTRAINT detail_order_order_fk FOREIGN KEY (order_id) REFERENCES product_management."order"(order_id)
);

CREATE SEQUENCE  product_management.detail_order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE  product_management.detail_order
    ALTER COLUMN detail_order_id
        SET DEFAULT nextval('product_management.detail_order_id_seq');


