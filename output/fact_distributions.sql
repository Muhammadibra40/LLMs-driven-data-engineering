CREATE TABLE fact_distributions (
    distribution_id INT PRIMARY KEY, -- Surrogate key for the distribution
    center_id INT NOT NULL, -- Foreign key to `dim_distribution_centers`
    beneficiary_id INT NOT NULL, -- Foreign key to `dim_beneficiaries`
    distribution_date_id INT NOT NULL, -- Foreign key to `dim_date`
    total_quantity INT NOT NULL, -- Total quantity of food distributed
    FOREIGN KEY (center_id) REFERENCES dim_distribution_centers(center_id),
    FOREIGN KEY (beneficiary_id) REFERENCES dim_beneficiaries(beneficiary_id),
    FOREIGN KEY (distribution_date_id) REFERENCES dim_date(date_id)
);
