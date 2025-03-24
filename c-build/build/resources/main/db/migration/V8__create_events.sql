CREATE TABLE IF NOT EXISTS events (
    id serial PRIMARY KEY,
    plant_id int NOT NULL,
    event_name text NOT NULL,
    frequency_interval interval, -- посмотреть как с ними работать
    next_date date NOT NULL,
    start_date date,
    last_happened date,
    CONSTRAINT fk_plant_id FOREIGN KEY (plant_id) REFERENCES plants(id) ON DELETE CASCADE
);
