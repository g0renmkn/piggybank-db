-- Initialization script for piggybank database
-- This script populates the database with predefined data
-- Run this after all table creation scripts (01-05)

-- ============================================================================
-- Populate Categories
-- ============================================================================
-- Insert predefined categories for bank movements
-- Using INSERT IGNORE to prevent errors if categories already exist

INSERT IGNORE INTO data_mov_categories (name, description) VALUES
('Other Expense', 'Other miscellaneous expenses, or unclassified expenses'),
('Banks', 'Bank operations, fees, etc.'),
('Investments', 'Dividends, interests, etc.'),

('Household', 'Food and household items'),
('Restaurant', 'Dining out expenses'),
('Transportation', 'Public transport expenses, parkings, tolls, etc.'),
('Car Maintenance', 'Car repairs, maintenance, and related expenses'),
('Utilities', 'Electricity, water, gas, internet, phone, home insurance, etc.'),
('Subscriptions', 'Monthly or recurring subscriptions'),

('Entertainment', 'Movies, concerts, hobbies, games'),
('Clothing', 'Clothing, shoes, accessories, etc.'),
('Healthcare', 'Medical expenses, pharmacy, doctor visits, etc.'),
('Education', 'Courses, books, training, tuition'),
('Travel', 'Vacation and travel expenses'),
('Transfer', 'Money transfers between accounts'),
('ATM Withdrawal', 'Cash withdrawals from ATM'),
('Charity', 'Donations and charitable contributions'),
('Tax Payment', 'Tax payments and related expenses'),


-- ============================================================================
-- Populate Periodicities
-- ============================================================================
-- Insert predefined periodicities for bank movements

INSERT IGNORE INTO data_mov_periodicities (name, description) VALUES
('One-time', 'Single occurrence, non-recurring transaction'),
('Daily', 'Occurs every day'),
('Weekly', 'Occurs every week'),
('Bi-weekly', 'Occurs every two weeks'),
('Monthly', 'Occurs every month'),
('Quarterly', 'Occurs every quarter (3 months)'),
('Semi-annually', 'Occurs twice per year (6 months)'),
('Yearly', 'Occurs once per year'),
('Irregular', 'Occurs irregularly, no fixed schedule');

-- ============================================================================
-- Optional: Sample Accounts (commented out by default)
-- ============================================================================
-- Uncomment and modify these if you want to create sample accounts
-- Note: You'll need to provide valid IBANs and account_type values
-- Available account_type values: 'BANK', 'FUND', 'STOCKS', 'CRYPTO_SPOT', 'CRYPTO_FUTURES', 'OTHER'

/*
INSERT IGNORE INTO accounts (name, account_type, iban, closed, comments) VALUES
('Main Checking Account', 'BANK', 'DE89370400440532013000', NULL, 'Primary account for daily transactions'),
('Savings Account', 'BANK', 'FR1420041010050500013M02606', NULL, 'Long-term savings account'),
('Investment Portfolio', 'FUND', 'ES9121000418450200051332', NULL, 'Investment account for stocks and bonds');
*/
