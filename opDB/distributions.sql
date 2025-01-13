CREATE TABLE distributions (
    distribution_id INT AUTO_INCREMENT PRIMARY KEY,
    center_id INT NOT NULL,
    beneficiary_id INT NOT NULL,
    distribution_date DATE NOT NULL,
    FOREIGN KEY (center_id) REFERENCES distribution_centers(center_id)
        ON DELETE CASCADE,
    FOREIGN KEY (beneficiary_id) REFERENCES beneficiaries(beneficiary_id)
        ON DELETE CASCADE
);
