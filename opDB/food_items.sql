CREATE TABLE food_items (
    food_item_id INT AUTO_INCREMENT PRIMARY KEY,
    food_name VARCHAR(255) NOT NULL,
    category ENUM('Grain', 'Vegetable', 'Fruit', 'Dairy', 'Protein', 'Other') NOT NULL,
    shelf_life_days INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
