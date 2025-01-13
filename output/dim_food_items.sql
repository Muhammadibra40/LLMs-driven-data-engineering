CREATE TABLE dim_food_items (
    food_item_id INT PRIMARY KEY, -- Surrogate key for the food item
    food_name VARCHAR(255) NOT NULL, -- Name of the food item
    category VARCHAR(50) NOT NULL, -- Food category (e.g., Grain, Vegetable)
    shelf_life_days INT, -- Shelf life of the food item
    created_at DATE -- Date the food item was created
);
