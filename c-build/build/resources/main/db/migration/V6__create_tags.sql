CREATE TABLE IF NOT EXISTS tags (
    id serial PRIMARY KEY,
    name text UNIQUE NOT NULL
);