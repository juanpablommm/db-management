--Se crean los roles iniciales que tiene el ecommerce

INSERT INTO user_management.roles
("role", description)
VALUES('Cliente', 'Cliente del ecommerce, compra y vende articulos');
INSERT INTO user_management.roles
("role", description)
VALUES('Administrador', 'Administrador del ecommerce');
