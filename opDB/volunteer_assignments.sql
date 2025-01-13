CREATE TABLE volunteer_assignments (
    assignment_id INT AUTO_INCREMENT PRIMARY KEY,
    distribution_id INT NOT NULL,
    volunteer_id INT NOT NULL,
    role VARCHAR(255),
    FOREIGN KEY (distribution_id) REFERENCES distributions(distribution_id)
        ON DELETE CASCADE,
    FOREIGN KEY (volunteer_id) REFERENCES volunteers(volunteer_id)
        ON DELETE CASCADE
);
