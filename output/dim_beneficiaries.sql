CREATE TABLE dim_beneficiaries (
    beneficiary_id INT PRIMARY KEY, -- Surrogate key for the beneficiary
    name VARCHAR(255) NOT NULL, -- Name of the beneficiary
    family_size INT NOT NULL, -- Size of the beneficiary's family
    contact_number VARCHAR(15), -- Contact number
    address TEXT, -- Address of the beneficiary
    registered_date DATE, -- Date the beneficiary registered
    created_at DATE -- Date the record was created
);
