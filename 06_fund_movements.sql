-- Fund movements table
-- This table stores periodic value updates for fund assets

CREATE TABLE IF NOT EXISTS fund_movements (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    asset_id INT UNSIGNED NOT NULL,
    date DATETIME NOT NULL,
    value DECIMAL(10, 2) NOT NULL,
    notes TEXT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    UNIQUE KEY unique_asset_date (asset_id, date),
    INDEX idx_asset_id (asset_id),
    INDEX idx_date (date),
    FOREIGN KEY (asset_id) REFERENCES data_available_assets(id) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
