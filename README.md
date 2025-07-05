# 배치 예시코드

## Table

---

### users

> 사용자 정보를 저장하는 테이블입니다. 이름, 이메일, 생성 시각 등을 포함합니다.

| Column     | Type         | Description |
|------------|--------------|-------------|
| id         | BIGINT       | 사용자 고유 ID   |
| name       | VARCHAR(100) | 사용자 이름      |
| email      | VARCHAR(255) | 사용자 이메일     |
| created_at | TIMESTAMP    | 계정 생성 시각    |

---

### products

> 사용자에게 할당된 상품 정보를 저장하는 테이블입니다. 사용자 ID와 사용 기간을 포함합니다.

| Column      | Type           | Description             |
|-------------|----------------|-------------------------|
| id          | BIGINT         | 상품 고유 ID                |
| name        | VARCHAR(100)   | 상품 이름                   |
| description | TEXT           | 상품 설명                   |
| price       | DECIMAL(15, 2) | 상품 가격                   |
| user_id     | BIGINT         | 해당 상품을 사용하는 사용자 ID      |
| start_date  | DATE           | 상품 사용 시작일               |
| end_date    | DATE           | 상품 사용 종료일 (NULL = 사용 중) |
| created_at  | TIMESTAMP      | 상품 등록 시각                |

---

### invoices

> 사용자별 청구서를 저장하는 테이블입니다.

| Column       | Type           | Description       |
|--------------|----------------|-------------------|
| id           | BIGINT         | 청구서 고유 ID         |
| user_id      | BIGINT         | 청구 대상 사용자 ID      |
| invoice_date | DATE           | 청구 일자             |
| total_amount | DECIMAL(15, 2) | 총 청구 금액           |
| status       | VARCHAR(50)    | 청구 상태 (예: UNPAID) |
| created_at   | TIMESTAMP      | 청구서 생성 시각         |

---

### invoice_items

> 청구 항목(라인 아이템)을 저장하는 테이블입니다.

| Column      | Type           | Description |
|-------------|----------------|-------------|
| id          | BIGINT         | 청구 항목 고유 ID |
| invoice_id  | BIGINT         | 관련 청구서 ID   |
| description | VARCHAR(255)   | 항목 설명       |
| amount      | DECIMAL(15, 2) | 해당 항목의 금액   |
