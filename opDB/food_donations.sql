CREATE TABLE food_donations (
    food_donation_id INT AUTO_INCREMENT PRIMARY KEY,
    donation_id INT NOT NULL,
    food_item_id INT NOT NULL,
    quantity INT NOT NULL, -- Quantity in units (e.g., kilograms)
    expiration_date DATE NOT NULL,
    FOREIGN KEY (donation_id) REFERENCES donations(donation_id)
        ON DELETE CASCADE,
    FOREIGN KEY (food_item_id) REFERENCES food_items(food_item_id)
        ON DELETE CASCADE
);
