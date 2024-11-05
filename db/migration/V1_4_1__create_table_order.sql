--Se crea la tabla order para asociar los productos que compre el usaurio
CREATE TABLE product_management."order" (
                                            order_id int4 NOT NULL,
                                            buyer_id int4 NOT NULL,
                                            seller_id int4 NOT NULL,
                                            total_amount numeric(10, 2) NOT NULL,
                                            CONSTRAINT order_pk PRIMARY KEY (order_id),
                                            CONSTRAINT order_users_fk FOREIGN KEY (buyer_id) REFERENCES user_management.users(user_id),
                                            CONSTRAINT order_users_fk_1 FOREIGN KEY (seller_id) REFERENCES user_management.users(user_id)
);


CREATE SEQUENCE  product_management.order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE  product_management.order
    ALTER COLUMN order_id
        SET DEFAULT nextval('product_management.order_id_seq');


