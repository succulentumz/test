CREATE TABLE IF NOT EXISTS plants_tags (
    plant_id int NOT NULL,
    tag_id int NOT NULL,
    CONSTRAINT fk_plant_id FOREIGN KEY (plant_id) REFERENCES plants(id) ON DELETE CASCADE,
    CONSTRAINT fk_tag_id FOREIGN KEY (tag_id) REFERENCES tags(id) ON DELETE CASCADE,
    UNIQUE (plant_id, tag_id)
);