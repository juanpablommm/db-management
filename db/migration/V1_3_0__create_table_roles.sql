--Se crea la tabla roles, para los roles que puede tener un usuario en el sistema, con su respectiva secuencia
CREATE TABLE user_management.roles (
                                       role_id int4 NOT NULL,
                                       "role" varchar(50) NOT NULL,
                                       description varchar(150) NULL,
                                       CONSTRAINT roles_pk PRIMARY KEY (role_id),
                                       CONSTRAINT roles_unique UNIQUE ("role")
);


CREATE SEQUENCE user_management.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE user_management.roles
    ALTER COLUMN role_id
        SET DEFAULT nextval('user_management.roles_id_seq');

