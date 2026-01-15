-- Stock movements table
-- This table stores buy/sell operations for stock assets and their accounts

CREATE TABLE IF NOT EXISTS stock_movements (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    asset_id INT UNSIGNED NOT NULL,
    account_id INT UNSIGNED NOT NULL,
    date DATETIME NOT NULL,
    qty DECIMAL(20, 8) NOT NULL,
    fees DECIMAL(20, 8) NULL,
    notes TEXT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX idx_asset_id (asset_id),
    INDEX idx_account_id (account_id),
    INDEX idx_date (date),
    FOREIGN KEY (asset_id) REFERENCES data_available_assets(id) ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (account_id) REFERENCES accounts(id) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
