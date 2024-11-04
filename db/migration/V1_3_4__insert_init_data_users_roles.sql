--Se aginag el rol de administrador al usuario juanpablomontoya618@gmail.com

INSERT INTO user_management.users_roles (user_id, role_id)
VALUES (
           (SELECT user_id FROM user_management.users WHERE email = 'juanpablomontoya618@gmail.com'),
           (SELECT role_id FROM user_management.roles WHERE role = 'Administrador')
       );
