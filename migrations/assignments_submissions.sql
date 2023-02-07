--Drop table if exists can be a useful command to have at the top if we make mistakes
--DROP TABLE IF EXISTS assignments

CREATE TABLE assignments (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255),
  content TEXT,
  day INTEGER,
  chapter INTEGER,
  duration INTEGER
);

CREATE TABLE assignment_submissions (
  id SERIAL PRIMARY KEY NOT NULL,
  assignment_id INTEGER REFERENCES assignments(id) on DELETE CASCADE,
  student_id INTEGER REFERENCES students(id) on DELETE CASCADE,
  duration INTEGER,
  submission_date DATE
);

