CREATE TABLE dim_distribution_centers (
    center_id INT PRIMARY KEY, -- Surrogate key for the distribution center
    center_name VARCHAR(255) NOT NULL, -- Name of the distribution center
    location TEXT NOT NULL, -- Location of the center
    contact_number VARCHAR(15), -- Contact number
    manager_name VARCHAR(255), -- Name of the manager
    created_at DATE -- Date the center was created
);
