-- bcrypt encoded password generated from '12345' with 10 rounds via https://www.browserling.com/tools/bcrypt
INSERT INTO oauth_client_details
    (client_id, client_secret, web_server_redirect_uri, scope, access_token_validity, refresh_token_validity,
     resource_ids, authorized_grant_types, additional_information)
    VALUES
    ('mobile', '{bcrypt}$2a$10$f0uOIQGtGqLTqigOb2VU5uv.xAxmZ8WmpXKEFis4x.t72mG.CDI82', 'http://localhost:8080/code', 'READ,WRITE', '3600', '10000',
     'inventory,payment', 'authorization_code,password,refresh_token,implicit', '{}');

INSERT INTO permission (NAME) VALUES ('create_profile');
INSERT INTO PERMISSION (NAME) VALUES ('read_profile');
INSERT INTO permission (NAME) VALUES ('update_profile');
INSERT INTO PERMISSION (NAME) VALUES ('delete_profile');

INSERT INTO role (NAME) VALUES ('ROLE_admin');
INSERT INTO role (NAME) VALUES ('ROLE_operator');

INSERT INTO PERMISSION_ROLE (PERMISSION_ID, ROLE_ID) VALUES (1,1); /*create-> admin */
INSERT INTO PERMISSION_ROLE (PERMISSION_ID, ROLE_ID) VALUES (2,1); /* read admin */
INSERT INTO PERMISSION_ROLE (PERMISSION_ID, ROLE_ID) VALUES (3,1); /* update admin */
INSERT INTO PERMISSION_ROLE (PERMISSION_ID, ROLE_ID) VALUES (4,1); /* delete admin */
INSERT INTO PERMISSION_ROLE (PERMISSION_ID, ROLE_ID) VALUES (2,2);  /* read operator */
INSERT INTO PERMISSION_ROLE (PERMISSION_ID, ROLE_ID) VALUES (3,2);  /* update operator */


insert into user
    (id, username,password, email, enabled, accountNonExpired, credentialsNonExpired, accountNonLocked)
    VALUES
    ('1', 'cenkcan','{bcrypt}$2a$10$f0uOIQGtGqLTqigOb2VU5uv.xAxmZ8WmpXKEFis4x.t72mG.CDI82', 'cenkcan@cenkc.com', '1', '1', '1', '1');

insert into  user
    (id, username,password, email, enabled, accountNonExpired, credentialsNonExpired, accountNonLocked)
    VALUES
    ('2', 'cenk', '{bcrypt}$2a$10$f0uOIQGtGqLTqigOb2VU5uv.xAxmZ8WmpXKEFis4x.t72mG.CDI82','cenk@cenkc.com', '1', '1', '1', '1');

INSERT INTO ROLE_USER (ROLE_ID, USER_ID) VALUES (1, 1); /* cenkcan-admin */
INSERT INTO ROLE_USER (ROLE_ID, USER_ID) VALUES (2, 2); /* cenk-operatorr */
