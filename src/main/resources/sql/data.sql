-- 사용자 데이터
INSERT INTO users (name, email)
VALUES ('홍길동', 'hong@example.com'),
       ('김철수', 'kim@example.com'),
       ('이영희', 'lee@example.com');

-- 상품 데이터 (각 사용자에게 할당된 상품 및 사용기간 포함)
INSERT INTO products (name, description, price, user_id, start_date, end_date)
VALUES
    ('S3 스토리지', '월간 스토리지 사용 요금', 5000.00, 1, '2024-01-01', NULL),
    ('트래픽 추가 요금', '월간 전송량 초과 시 부과되는 요금', 12000.00, 2, '2024-03-15', '2024-06-30'),
    ('백업 서비스', '자동 백업 및 복구 기능 요금', 8000.00, 3, '2024-05-01', NULL);

-- 청구서 데이터
INSERT INTO invoices (user_id, invoice_date, total_amount, status)
VALUES (1, '2025-07-01', 17000.00, 'PAID'),
       (2, '2025-07-01', 8000.00, 'UNPAID');

-- 청구 세부항목 데이터
INSERT INTO invoice_items (invoice_id, description, amount)
VALUES (1, 'S3 스토리지 요금', 5000.00),
       (1, '트래픽 추가 요금', 12000.00),
       (2, '백업 서비스 요금', 8000.00);
