--Se crea la tabla users_roles, para la relacion entre roles y usuarios
CREATE TABLE user_management.users_roles (
                                             users_roles_id int4 NOT NULL,
                                             user_id int4 NOT NULL,
                                             role_id int4 NOT NULL,
                                             CONSTRAINT user_roles_pk PRIMARY KEY (users_roles_id)
);

ALTER TABLE user_management.users_roles ADD CONSTRAINT users_roles_roles_fk FOREIGN KEY (role_id) REFERENCES user_management.roles(role_id);
ALTER TABLE user_management.users_roles ADD CONSTRAINT users_roles_users_fk FOREIGN KEY (user_id) REFERENCES user_management.users(user_id);


CREATE SEQUENCE user_management.users_roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE user_management.users_roles
    ALTER COLUMN users_roles_id
        SET DEFAULT nextval('user_management.users_roles_id_seq');

