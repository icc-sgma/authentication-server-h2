TRUNCATE TABLE oauth_client_details;
TRUNCATE TABLE users;
TRUNCATE TABLE authorities;

-- The encrypted password is `secret`
INSERT INTO oauth_client_details (client_id, client_secret, scope, authorized_grant_types, authorities, access_token_validity)
  VALUES ('brucewayne', '{bcrypt}$2a$10$vCXMWCn7fDZWOcLnIEhmK.74dvK1Eh8ae2WrWlhr2ETPLoxQctN4.', 'read,write', 'password,refresh_token,client_credentials', 'ROLE_USER', 300);

-- The encrypted password is `secret-pwd`
INSERT INTO users (id, username, password, enabled) VALUES (1, 'batman', '{bcrypt}$2a$10$lxTsT9rC0ZhoBcpJIsxLuexdRuP56Y6wLh1OsJ8M/jwcYowmAgSd.', 1);

INSERT INTO authorities (username, authority) VALUES ('batman', 'ROLE_CLIENT,ROLE_NOTIFICATION');