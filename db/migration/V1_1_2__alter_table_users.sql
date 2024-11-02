--Se cambia el tamño del varchar, dado el tamaño del valor encriptado
ALTER TABLE user_management.users ALTER COLUMN "password"
    TYPE varchar(150) USING "password"::varchar(150);
