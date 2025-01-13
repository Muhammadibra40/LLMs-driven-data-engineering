CREATE TABLE fact_distributed_food (
    distributed_food_id INT PRIMARY KEY, -- Surrogate key for the distributed food
    distribution_id INT NOT NULL, -- Foreign key to `fact_distributions`
    food_item_id INT NOT NULL, -- Foreign key to `dim_food_items`
    quantity INT NOT NULL, -- Quantity of food distributed
    FOREIGN KEY (distribution_id) REFERENCES fact_distributions(distribution_id),
    FOREIGN KEY (food_item_id) REFERENCES dim_food_items(food_item_id)
);
