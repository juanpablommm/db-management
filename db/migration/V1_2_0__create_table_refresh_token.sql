--Se crea la tabla refresh token junto co su secuencia, para administracion del la autenticacion con jwt
CREATE TABLE user_management.refresh_token (
                                               refresh_token_id int4 NOT NULL,
                                               "token" varchar(150) NOT NULL,
                                               expiry_time timestamp NOT NULL,
                                               user_id int4 NOT NULL,
                                               CONSTRAINT refresh_token_pk PRIMARY KEY (refresh_token_id),
                                               CONSTRAINT refresh_token_unique UNIQUE ("token"),
                                               CONSTRAINT refresh_token_users_fk FOREIGN KEY (user_id) REFERENCES user_management.users(user_id)
);

CREATE SEQUENCE user_management.refresh_token_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE user_management.refresh_token
    ALTER COLUMN refresh_token_id
        SET DEFAULT nextval('user_management.refresh_token_id_seq');
