--DROP TABLE changes;

CREATE TABLE changes (
  id SERIAL PRIMARY KEY,
  date TIMESTAMP NOT NULL,
  userId INT NOT NULL,
  impact INT NOT NULL,
  data json NOT NULL
);

INSERT INTO changes (date, userid, impact, data) SELECT current_date, 1, 1, '{ "test" :1 }';

SELECT * FROM changes;