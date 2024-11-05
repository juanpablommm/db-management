--Se crea la tabla products con su respectivo esquema en el cual se trabjara las tablas de produc-manegement y la debida secuencia
CREATE SCHEMA IF NOT EXISTS product_management;

CREATE TABLE product_management.products (
                                          products_id int4 NOT NULL,
                                          product_name varchar(100) NOT NULL,
                                          published_time timestamp NOT NULL,
                                          CONSTRAINT products_pk PRIMARY KEY (products_id)
);
