CREATE TABLE IF NOT EXISTS users (
    id serial PRIMARY KEY,
    username text NOT NULL,
    password_hash text NOT NULL,
    email text UNIQUE NOT NULL
);