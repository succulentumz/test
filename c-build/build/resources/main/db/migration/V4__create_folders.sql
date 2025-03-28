CREATE TABLE IF NOT EXISTS folders (
    id serial PRIMARY KEY,
    collection_id int NOT NULL,
    name text NOT NULL,
    created_at timestamp with time zone NOT NULL,
    CONSTRAINT fk_collection_id FOREIGN KEY (collection_id) REFERENCES collections(id) ON DELETE CASCADE
);