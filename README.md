# 배치 예시코드

## Table

### users

| Column     | Type            | Constraints                   |
|------------|-----------------|-------------------------------|
| id         | BIGINT          | PRIMARY KEY, AUTO_INCREMENT   |
| name       | VARCHAR(100)    | NOT NULL                      |
| email      | VARCHAR(255)    | UNIQUE, NOT NULL              |
| created_at | TIMESTAMP       | DEFAULT CURRENT_TIMESTAMP     |


### products

| Column      | Type           | Constraints                 |
|-------------|----------------|-----------------------------|
| id          | BIGINT         | PRIMARY KEY, AUTO_INCREMENT |
| name        | VARCHAR(100)   | NOT NULL                    |
| description | TEXT           |                             |
| price       | DECIMAL(15, 2) | NOT NULL                    |
| created_at  | TIMESTAMP      | DEFAULT CURRENT_TIMESTAMP   |


### invoices

| Column       | Type            | Constraints                          |
|--------------|-----------------|--------------------------------------|
| id           | BIGINT          | PRIMARY KEY, AUTO_INCREMENT          |
| user_id      | BIGINT          | NOT NULL, FOREIGN KEY → users(id)    |
| invoice_date | DATE            | NOT NULL                             |
| total_amount | DECIMAL(15, 2)  | NOT NULL, DEFAULT 0                  |
| status       | VARCHAR(50)     | DEFAULT 'UNPAID'                     |
| created_at   | TIMESTAMP       | DEFAULT CURRENT_TIMESTAMP            |


### invoice_items

| Column      | Type           | Constraints                                             |
|-------------|----------------|---------------------------------------------------------|
| id          | BIGINT         | PRIMARY KEY, AUTO_INCREMENT                             |
| invoice_id  | BIGINT         | NOT NULL, FOREIGN KEY → invoices(id), ON DELETE CASCADE |
| description | VARCHAR(255)   | NOT NULL                                                |
| amount      | DECIMAL(15, 2) | NOT NULL                                                |


