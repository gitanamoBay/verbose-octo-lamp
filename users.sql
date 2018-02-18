--DROP TABLE users;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  username VARCHAR(64) NOT NULL,
  password VARCHAR(256) NOT NULL,
  enabled BOOLEAN NOT NULL DEFAULT (TRUE)
 );

CREATE INDEX user_username on users(username);

INSERT INTO users (username, password) SELECT 'grant', 'pass' WHERE NOT EXISTS (SELECT id FROM users WHERE username='grant');

SELECT * from users;