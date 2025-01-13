CREATE TABLE donations (
    donation_id INT AUTO_INCREMENT PRIMARY KEY,
    donor_id INT NOT NULL,
    donation_date DATE NOT NULL,
    donation_type ENUM('Food', 'Funds') NOT NULL,
    amount DECIMAL(10, 2), -- For monetary donations
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (donor_id) REFERENCES donors(donor_id)
        ON DELETE CASCADE
);
