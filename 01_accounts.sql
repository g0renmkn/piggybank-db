-- Accounts table
-- This table stores information about all accounts (bank, investment, etc.)

CREATE TABLE IF NOT EXISTS accounts (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    account_type ENUM('BANK', 'FUND', 'STOCKS', 'CRYPTO_SPOT', 'CRYPTO_FUTURES', 'OTHER') NOT NULL,
    iban VARCHAR(34) NOT NULL,
    closed DATE NULL,
    comments TEXT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    UNIQUE KEY unique_iban (iban)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
