-- Bank movements table
-- This table stores all movements (transactions) for all accounts

CREATE TABLE IF NOT EXISTS bank_movements (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    date DATETIME NOT NULL,
    account_id INT UNSIGNED NOT NULL,
    category INT UNSIGNED NOT NULL,
    periodicity INT UNSIGNED NULL,
    description VARCHAR(255) NOT NULL,
    value DECIMAL(10, 2) NOT NULL,
    notes TEXT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX idx_account_id (account_id),
    INDEX idx_date (date),
    INDEX idx_category (category),
    INDEX idx_periodicity (periodicity),
    FOREIGN KEY (account_id) REFERENCES accounts(id) ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (category) REFERENCES data_mov_categories(id) ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (periodicity) REFERENCES data_mov_periodicities(id) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
