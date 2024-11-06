--Se agrega columan user_id como fk para una realacion one to tone con la tabla users
ALTER TABLE product_management.products ADD user_id int4 NOT NULL;
ALTER TABLE product_management.products ADD CONSTRAINT products_users_fk FOREIGN KEY (user_id) REFERENCES user_management.users(user_id);
