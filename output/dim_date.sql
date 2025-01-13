CREATE TABLE dim_date (
    date_id INT PRIMARY KEY, -- Surrogate key for the date
    full_date DATE NOT NULL, -- Full date (e.g., 2025-01-10)
    year INT NOT NULL, -- Year
    month INT NOT NULL, -- Month
    day INT NOT NULL, -- Day of the month
    day_of_week VARCHAR(15), -- Day of the week (e.g., Monday)
    is_weekend BOOLEAN -- Indicates if the date is a weekend
);
