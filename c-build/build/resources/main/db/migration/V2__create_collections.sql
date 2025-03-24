CREATE TABLE IF NOT EXISTS collections (
    id serial PRIMARY KEY,
    name text NOT NULL,
    description text,
    is_shared boolean NOT NULL DEFAULT false,
    created_at timestamp with time zone NOT NULL
);