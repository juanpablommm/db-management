--Se crea una unique entre las fk en la tabla users_roles, para evitar que un usario tenga el mismo rol dos veces

ALTER TABLE user_management.users_roles ADD CONSTRAINT users_roles_unique UNIQUE (user_id,role_id);
