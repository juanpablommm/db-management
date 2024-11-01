-- create schema for user_management and table users --
CREATE SCHEMA IF NOT EXISTS user_management;

CREATE TABLE user_management.users (
                              user_id int4 NOT NULL,
                              username varchar(50) NOT NULL,
                              names varchar(100) NOT NULL,
                              surnames varchar(100) NOT NULL,
                              email varchar(50) NOT NULL,
                              "password" varchar(50) NOT NULL,
                              enabled boolean NOT NULL,
                              CONSTRAINT users_pk PRIMARY KEY (user_id),
                              CONSTRAINT username_unique UNIQUE (username),
                              CONSTRAINT email_unique UNIQUE (email)
);
