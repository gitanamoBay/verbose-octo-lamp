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

CREATE INDEX changes_user on changes(user_id);
CREATE INDEX change_status on changes(status);
CREATE INDEX change_date_finished on changes(date_finished NULLS LAST);

INSERT INTO changes (user_id, impact, data) SELECT 1, 1, '{ "test" :1 }';

SELECT * FROM changes;