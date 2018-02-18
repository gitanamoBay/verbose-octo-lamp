CREATE TABLE changes (
  id SERIAL PRIMARY KEY,
  date TIMESTAMP NOT NULL,
  userId INT NOT NULL,
  data json NOT NULL
)

CREATE TABLE users(
  id SERIAL PRIMARY KEY,
  username VARCHAR(64) NOT NULL,
  password VARCHAR(256) NOT NULL,
  enabled BOOLEAN NOT NULL DEFAULT (TRUE)
 )

INSERT INTO users (username, password) VALUES ('grant', 'pass')

SELECT * from users WHERE username = 'grant'