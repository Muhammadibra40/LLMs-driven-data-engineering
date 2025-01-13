CREATE TABLE dim_donors (
    donor_id INT PRIMARY KEY, -- Surrogate key for the donor
    donor_name VARCHAR(255) NOT NULL, -- Name of the donor
    donor_type VARCHAR(50) NOT NULL, -- Individual or Organization
    contact_number VARCHAR(15), -- Contact number
    email VARCHAR(255), -- Email of the donor
    address TEXT, -- Donor's address
    created_at DATE -- Date the donor was created in the system
);
