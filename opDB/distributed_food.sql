CREATE TABLE distributed_food (
    distributed_food_id INT AUTO_INCREMENT PRIMARY KEY,
    distribution_id INT NOT NULL,
    food_item_id INT NOT NULL,
    quantity INT NOT NULL, -- Quantity in units (e.g., kilograms)
    FOREIGN KEY (distribution_id) REFERENCES distributions(distribution_id)
        ON DELETE CASCADE,
    FOREIGN KEY (food_item_id) REFERENCES food_items(food_item_id)
        ON DELETE CASCADE
);
