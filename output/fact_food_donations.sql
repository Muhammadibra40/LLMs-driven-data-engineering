CREATE TABLE fact_food_donations (
    food_donation_id INT PRIMARY KEY, -- Surrogate key for the food donation
    donation_id INT NOT NULL, -- Foreign key to `fact_donations`
    food_item_id INT NOT NULL, -- Foreign key to `dim_food_items`
    quantity INT NOT NULL, -- Quantity of food donated
    expiration_date DATE NOT NULL, -- Expiration date of the food
    FOREIGN KEY (donation_id) REFERENCES fact_donations(donation_id),
    FOREIGN KEY (food_item_id) REFERENCES dim_food_items(food_item_id)
);
