--Se crea una secuencia para el id de la tabla user, y se le asigna
CREATE SEQUENCE user_management.users_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER TABLE user_management.users
    ALTER COLUMN user_id SET DEFAULT nextval('user_management.users_user_id_seq');
