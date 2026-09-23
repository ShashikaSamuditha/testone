-- Run this once on an EXISTING BudgetPilot database.
CREATE TABLE IF NOT EXISTS notices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    message TEXT NOT NULL,
    audience ENUM('all','customers','suppliers') NOT NULL DEFAULT 'all',
    status ENUM('draft','published') NOT NULL DEFAULT 'published',
    created_by INT NULL,
    published_at DATETIME NULL,
    expires_at DATETIME NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT fk_notices_admin FOREIGN KEY (created_by) REFERENCES users(id) ON DELETE SET NULL
);
