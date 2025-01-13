CREATE TABLE fact_donations (
    donation_id INT PRIMARY KEY, -- Surrogate key for the donation
    donor_id INT NOT NULL, -- Foreign key to `dim_donors`
    donation_date_id INT NOT NULL, -- Foreign key to `dim_date`
    donation_type VARCHAR(50) NOT NULL, -- Food or Funds
    amount DECIMAL(10, 2), -- Donation amount (for funds)
    FOREIGN KEY (donor_id) REFERENCES dim_donors(donor_id),
    FOREIGN KEY (donation_date_id) REFERENCES dim_date(date_id)
);
