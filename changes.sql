DROP TABLE changes;

CREATE TABLE changes (
  id SERIAL PRIMARY KEY,
  date_logged TIMESTAMP NOT NULL DEFAULT (current_timestamp),
  user_id INT NOT NULL,
  status SMALLINT NOT NULL DEFAULT (0),
  impact INT NOT NULL,
  data jsonb NOT NULL,
  date_started TIMESTAMP NULL,
  date_finished TIMESTAMP NULL
);

INSERT INTO changes (user_id, impact, data) SELECT 1, 1, '{ "test" :1 }';

SELECT * FROM changes;