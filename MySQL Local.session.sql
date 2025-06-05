CREATE TABLE login50 (
    user_id INT AUTO_INCREMENT PRIMARY KEY,  -- Unique ID for each user
    email VARCHAR(100) NOT NULL UNIQUE,      -- Email, must be unique
    password_hash VARCHAR(255) NOT NULL,     -- Password hash (for login via email/password)
    forgot_password_token VARCHAR(255) DEFAULT NULL, -- Token for password reset (NULL by default)
    google_id VARCHAR(255) DEFAULT NULL,     -- Google ID if the user logs in via Google
    facebook_id VARCHAR(255) DEFAULT NULL,   -- Facebook ID if the user logs in via Facebook
    twitter_id VARCHAR(255) DEFAULT NULL,    -- Twitter ID if the user logs in via Twitter
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,  -- Account creation timestamp
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP  -- Auto-updates on modification
);
INSERT INTO login50 (email, password_hash)
VALUES ('2215047@nec.edu.in', '$2y$10$EIXh6HzsXI1Ojoa.QG9aC.F9q2jX.gihqAGZ5kDPjqHIj.wfXe/Qa');

select * from login50;

