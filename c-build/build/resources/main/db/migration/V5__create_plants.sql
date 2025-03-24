CREATE TABLE IF NOT EXISTS plants (
    id serial PRIMARY KEY,
    folder_id int,
    collection_id int NOT NULL,
    name text NOT NULL,
    description text,
    planted_date date,
    location text,
    photo_id text,
    added_at timestamp with time zone NOT NULL DEFAULT now(),
    rating int,
    life_status text NOT NULL,
    death_location text,
    death_cause text,
    death_date date,
    CONSTRAINT fk_folder_id FOREIGN KEY (folder_id) REFERENCES folders(id) ON DELETE CASCADE,
    CONSTRAINT fk_collection_id FOREIGN KEY (collection_id) REFERENCES collections(id) ON DELETE CASCADE
);