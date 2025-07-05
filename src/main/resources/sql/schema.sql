CREATE TABLE users
(
    id         BIGINT PRIMARY KEY AUTO_INCREMENT,
    name       VARCHAR(100)        NOT NULL,
    email      VARCHAR(255) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE products
(
    id          BIGINT PRIMARY KEY AUTO_INCREMENT,
    name        VARCHAR(100)   NOT NULL,
    description TEXT,
    price       DECIMAL(15, 2) NOT NULL,
    created_at  TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE invoices
(
    id           BIGINT PRIMARY KEY AUTO_INCREMENT,
    user_id      BIGINT         NOT NULL,
    invoice_date DATE           NOT NULL,
    total_amount DECIMAL(15, 2) NOT NULL DEFAULT 0,
    status       VARCHAR(50)             DEFAULT 'UNPAID',
    created_at   TIMESTAMP               DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (user_id) REFERENCES users (id)
);

CREATE TABLE invoice_items
(
    id          BIGINT PRIMARY KEY AUTO_INCREMENT,
    invoice_id  BIGINT         NOT NULL,
    description VARCHAR(255)   NOT NULL,
    amount      DECIMAL(15, 2) NOT NULL,

    FOREIGN KEY (invoice_id) REFERENCES invoices (id) ON DELETE CASCADE
);
