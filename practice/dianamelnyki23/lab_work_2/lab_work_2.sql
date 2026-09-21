-- Завдання 1
SELECT type, duration_days, price
FROM memberships;
-- Завдання 2
SELECT type, duration_days, price
FROM memberships
WHERE duration_days >= 30;
-- Завдання 3
SELECT type, duration_days, price
FROM memberships
LIMIT 3;
-- Завдання 4
CREATE TEMP TABLE null_test (
    type TEXT,
    duration_days INTEGER,
    price REAL
);

INSERT INTO null_test (type, duration_days, price)
VALUES (NULL, 30, 1200);

SELECT type, duration_days, price
FROM null_test
WHERE type IS NULL;

SELECT type, duration_days, price
FROM null_test
WHERE type IS NOT NULL;
-- Завдання 5
SELECT type, duration_days, price
FROM memberships
WHERE duration_days >= 30
  AND price <= 5200;