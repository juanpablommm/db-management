--Se xrea la secuencia para la tabla products, y se le asigna meidante alter table
CREATE SEQUENCE  product_management.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE  product_management.products
    ALTER COLUMN products_id
        SET DEFAULT nextval('product_management.products_id_seq');

